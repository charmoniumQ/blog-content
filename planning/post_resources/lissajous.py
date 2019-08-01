from numpy import *
import matplotlib.pyplot as plt

ts = arange(0, 70, 0.1)
xw, yw = 1, 3.29
xs, ys = cos(xw * ts), cos(yw * ts)

plt.figure()
plt.plot(xs, ys)
plt.savefig('output.png')
