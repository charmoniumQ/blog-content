#!/usr/bin/env python3

import re
import click
from collections import Counter
from nltk.stem.porter import PorterStemmer

def tokenize(prose):
    prose = prose.lower()
    prose = re.sub('[^a-z ]', ' ', prose, flags=re.M)
    prose = re.sub(' +', ' ', prose)
    words = prose.split(' ')
    words = filter(bool, words) # remove empty string
    return words

stem = PorterStemmer()
def count_stems(words):
    freq = Counter(map(stem.stem, words))
    return freq

def freq_list(freq, n):
    '''lists the n most common'''
    row = '{:<6} {:<6} {}'
    print(row.format('place', 'count', 'stem'))
    for i, (stem, count) in enumerate(freq.most_common(n)):
        place = i + 1
        print(row.format(place, count, stem))

def freq_bars(freq, n):
    '''shows a plaintext bar chart of the n most common'''
    row = '{:<6} {:<16} {}'
    print(row.format('place', 'stem', ''))
    maxi = freq.most_common(1)[0][1]
    for i, (stem, count) in enumerate(freq.most_common(n)):
        place = i + 1
        bar = int(count / maxi * 55)
        print(row.format(place, stem, '=' * bar))

def freq_plot(freq, n):
    '''makes a graphical plot of the n most common as output.png'''
    import matplotlib.pyplot as plt
    import numpy as np
    ys = [count for (stem, count) in freq.most_common(n)]
    plt.plot(np.arange(0, len(ys)), ys, 'r+')
    ax = plt.gca()
    ax.set_yscale('log')
    ax.set_xscale('log')
    plt.savefig('output.png')

def freq_csv(freq, n):
    '''writes raw csv data of the n most common to output.csv'''
    import csv
    with open('output.csv', 'w') as file:
        writer = csv.writer(file)
        writer.writerow(['place', 'count', 'stem'])
        for i, (stem, count) in enumerate(freq.most_common(n)):
            place = i + 1
            writer.writerow([place, count, stem])

displays = {
    'list': freq_list,
    'bars': freq_bars,
    'plot': freq_plot,
    'csv': freq_csv,
}
display_help_strings = [
    '{}: {}'.format(option, action.__doc__)
        for option, action in displays.items()]

@click.command()
@click.argument('prose', type=click.File('r'))
@click.option('-n', type=int, default=10,
    help='number of stems to show, -1 to show all')
@click.option('--display', default='bars', type=click.Choice(displays.keys()),
    help='\n' + '\n\n'.join(display_help_strings) + '\n')

def main(prose, n, display):
    '''Analyses the frequency of stems that occur in prose'''
    prose_text = ' '.join(prose)
    words = tokenize(prose_text)
    freq = count_stems(words)
    if n == -1:
        n = None
    displays[display](freq, n)

if __name__ == '__main__':
    main()
