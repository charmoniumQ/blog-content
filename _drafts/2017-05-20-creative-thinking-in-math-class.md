---
layout: post
title:  "Creative thinking in math class"
tags: [math, pedagogy]
jquery: true
unpublished: true
excerpt: >

  Most students will say math class is stupid and boring. As a math person myself, I have to say: they're right!

---

## Math is not

Most don't know what math means.

- Math **is not** about carrying out procedures like long-mulitplication or long division.
- Math **is not** about learning facts like the Pythagoran theorem.
- Math **is not** even about numbers.

You would be forgiven from thinking one of these things based on what math class is like in school.

Math **is** more like art than science, and teaching it that way gives students skills which are transferrable to other domains.

## Transferrable skill: problem-solving

Math involves creating new systems which is an inherently creative endeavor, but we don't teach it as such.

Imagine you really like painting. But in every painting class for 12 years your assignments look like this.

[image]

Well, you get really good at coloring in the lines. But you never get to practice choosing your own colors or drawing your own lines. Surely no school would teach a creative subject in such a silly way, right?

[comment]: <> (In order to sate the [demons of standardized testing](http://fairtest.org/how-standardized-testing-damages-education-pdf))

This is exactly what math class has been reduced to: working in other people's systems and answering a few stock 'types' of questions without using inventiveness or curiosity. This is what a typical worksheet looks like: twenty problems that are asking you to do the same thing, just with different numbers. Learning math has become a mindless memorization game.

[image]
> Inspired by [A Mathematicians Lament by Paul Lockhart](https://www.maa.org/sites/default/files/pdf/devlin/LockhartsLament.pdf)

Asking novel kinds of questions teaches students how to solve problems they haven't explicitly learned how to solve. In any job position, you will be asked to do this. Some students are afraid to trust their own original thoughts; Explicit practice with feedback can help them eventually use their own intelligence when making choices. I don't think *only* asking novel questions to students is necessarily a good idea, but I think we to ask more than none.

Here is a problem that requires original thinking to solve the first time.

This is a checkerboard with dominoes where each domino takes up two squares.

[image]

It can be tiled with dominoes without any overlap or dominoes hanging off of the edge.

[image]

If I cut off the two opposite red corners, can I still tile the board?

You may identify one tiling pattern that does not work, but can you convince me that *no* tiling pattern will work?

[image]

This is a tough question, but in cases like this, a teacher can ask leading questions that guide the student to an answer for the difficult question. For example, I could ask,

1. How many squares are there on the original board?
<br /><button class="spoiler"></button>
<span><br />Since the board is 8x8, there were 64 squares before the two corner tiles were removed.</span>
2. After the corners are removed, how many of those that remain are black? How many are red?
<br /><button class="spoiler"></button>
<span><br />Out of the original 64, there must be 32 red and 32 black, but I cut off two red squares. Therefore there are 30 red and 32 black.</span>
3. Can I place a domino such that it covers only two black squares? or only one black square?
<br /><button class="spoiler"></button>
<span><br />No. Each domino must cover one red and one black, no matter how it is placed.</span>
4. Back to the original question, can all of the red tiles and all of the black tiles be covered by dominoes?
<br /><button class="spoiler"></button>
<span><br />No, because the are 32 black tiles, 30 red tiles, and each domino covers one of both. No matter how you do it, you will end up with two uncovered black tiles.</span>

This style of thinking is valuable without a mentor as well. If students could learn that even though they can't answer the big question, they can still make up other small questions (using some of their own ingenuity) which they can answer. Students do not even need a wide grasp of math before they can begin answering novel questions like this one.

## Transferrable skill: communication

The method of teaching used above is called the "Socratic method." Socrates famously [explained mathematics to an uneducated slave](https://en.wikipedia.org/wiki/Meno#Dialogue_with_Meno.27s_slave). Explaining complicated things in simple terms is an art. There is not necessarily a 'right' way of explaining something, but some ways are better than others.

Currently math curriculum does not even attempt to challenge students' ability to explain and persuade. Students go on to their future studies and jobs lacking the ability to explain something to people who don't already understand it and convince people of something they don't already believe. These are both skills that could be exercised in the context of math.

Here is an example. When I was in middle school, I was arguing with my friends about whether 0.999... (repeating forever) was equal to 1. I thought it was not the same as 1, but a hair less than 1. My friend Ben was just as adamant that 0.999... exactly equal to 1. His explanation was short, but persuasive.

1. He asked us if we believed 1/3 = 0.333... exactly. We of course agreed.
2. Then he asked us if 1 = 3 * 1/3 exactly. Nothing special here either.
3. Then he said that 1 = 3 * 1/3 = 3 * 0.333... exactly. "Ok?" we nodded.
4. When multiplying decimal digits, you mulitply each digit by the multiplier, so 3 * 0.333... = 0.999... exactly. We learned that years ago and used it recently.
5. Hence 1 = 3 * 1/3 = 3 * 0.333... = 0.999... exactly. It's just another way of writing the same thing.

As an aside, [here]() are some other arguments if you are not convinced.

He won us over to his side in about a minute with a bullet-proof argument. At each step, he thought from our perspective: "what facts does my audience already believe and how can I use *those*?"

Although he knew more math and jargon than us, he deliberately did not use it because he wanted us to understand it. People of mediocre intelligence and overinflated ego appeal to complicated topics that "you wouldn't understand" to argue or explain; people of true intelligence argue or explain something complicated [using simple terms](Feynman).

## Making things better

I don't know exactly how to incorporate these ideas. Surely there is some value and wisdom in the traditional system; everyone needs to learn fractions. I am merely pointing out that maybe we need some traditional rote-learning mixed with novel problem-solving and communication, which are currently absent completely.

Twelve years of these two things combined extinguish any remaining remnant of mathematical creativity, curiosity, or inspiration from students. It's no wonder most students hate math. It's also no wonder that sometimes people at their job act like mindless, instruction-following drones that do only exactly what they are told with no ability to improvise or innovate in a self-motivated way. I hope these ideas can help change some people away from that.

I won't pretend I am the first person on earth to notice this. These ideas are already implemented in institutions like __. I was lucky enough to have dedicated teachers who went above and beyond what was required to implement these ideas. They also believed in me, and I am grateful for that.

I hope to follow their example with my own spin on things too.

<script type="text/javascript">
var hidden = {};
function toggle() {
  const button = $(this);
  const id = button.attr('id');
  const text = $(button.next());
  if (hidden[id]) {
    button.text('Click to hide');
    text.show();
    hidden[id] = false;
  } else { // false or undefined (initially undefined)
    button.text('Click to show');
    text.hide();
    hidden[id] = true;
  }
}

$(document).ready(function() {
  // set initial state
  $('button.spoiler').each(function(i, button) {
    $(button).attr('id', i);
  });
  $('button.spoiler').each(toggle);
});
$("button.spoiler").click(toggle);
</script>


**This part has paragraphs that I have temporarily discarded. You can stop reading now.**

_I gave a [TEDx talk](https://youtu.be/IQqb8HfN5hw) on this topic earlier. I have written and revised the same ideas in essay form._


Up until the collegiate level, most maths students memorize the 'right' way to do certain types of problems, and then repeat that hundreds of times on homework, so that they can repeat it on a test.

Students who try to understand why things work don't perform as well as students who have the procedures down cold when test-day comes. Inventing your own procedures is frowned upon. Students are incentivized **not** to learn maths and certainly **not** to try and be creative at all!

### Transferrable skills

Most people have a less pleasant view of mathematics, because school ingrains a deap-seated hatred of anything that sounds like math. Not only does this rob the student of a potentially enjoyable experience, it robs the student of the transferrable skills that are exercised in math.

## Math as art

[comment]: <> (From the Mayans to the Greeks, from Babylon to the Indus River, every civilization has developed the disciplines of music, painting, and _math_. It satisfies some basic human desire to explore the unknown, express ideas, and awe at sheer beauty. Sometimes it happens to be useful, but its purpose is [to be beautiful](https://en.wikipedia.org/wiki/A_Mathematician%27s_Apology).)

The artist gets to make up the rules in his art, as long as you are consistent. For example Beethoven did not follow the rules of Classical music; Instead he and his contemporaries started his own movement of Romanticism with its own rules, norms, and feel. Artists work in art systems they consider interesting or aesthetic.

For example, There is no real number that is negative when you square it. What is the concept of a 'real number' besides a theoretical construct existing only in the minds of humans? If that is the case, why can we not invent our own theoretical constructs with different rules?

René Descartes and his contemporaries saw that equations such as $x^2+1=0$ could not be solved with the existing real number rules, so they created their own rules for numbers called complex numbers. They added an 'imaginary unit' where $i^2=-1$. Other mathematicians became fascinated with this system of complex numbers and developed it further, bringing in ideas from calculus, combinatorics, and functional analysis. Complex numbers were developed in the 1600s just for the sake of the idea, and it happened to be useful for physics ([AC current](https://en.wikipedia.org/wiki/Phasor)) in the 1800s.

[comment]: <> (While I could invent a system in which every equation has the same solution, the resulting system is not that interesting. This is analagous to a composer who removes all of the rules and plays nothing. Just as it would be wrong to say that Baroque music is 'incorrect', no mathematical system by itself is 'incorrect', however certain systems have works which express some kind of elegance to them, and those are the ones we decide to study. Few would want to study a system where every equation has the same solution. Certain works within a system have some kind of elegance to them, and some observers have a preference. For example, I generally prefer Romantic over Baroque)

That's what math actually is to those who practice it. You get to make crazy up hypotheticals (e.g. "what if we had numbers that are negative when you square them?") and investigate them to their logical conclusion (e.g. complex analysis). There are many more of these: "are all infinities equal?" gives cardinal and ordinal numbers, "could a computer program prove everything?" gives computability theory and the incompleteness theorem.


## Transferrable skill: critical thinking

This is the exact opposite of how math classes currently operate. Most students are given formulae but don't know why they are true. They believe it because their textbook says so. It is purely argument from authority. While students are allowed to ask questions, they are not invited to.

Math is supposed to teach students about logical reasoning. But what stands to be reasoned in this example? Teaching types does not give the opportunity for using logic. The need for logical reasoning doesn't go away outside of the classroom. It prepare students to write essays in history class with original ideas that don't appeal to other authorities.

Just as the point of science is to use verifiable experiments to get to truth, the point of math is to use logical reasoning to get to truth. Most science classes have experiments, but most math classes don't have any arguments.

### 42 = 0 example

Let x = 0.

<table class="proof-table">
<tr><td>42x = 0 and 0 = 0x</td></tr>
<tr><td>42x = 0x</td></tr>
<tr><td>42x / x = 0x / x</td></tr>
<tr><td>42 = 0</td></tr>
</table>

Another favorite debate in middle school. What's the flaw? Thinking about which step does not logically follow from the previous is exactly the same in a political debate. Consider the arugment:

(shows example)

But finding the flaw in a mathematical argument is the same type of thinking as finding a flaw in a political argument.

(shows example)

This skill is used all over the place

Imagine how much better our political discourse would be if everyone practiced logical reasoning in school. Now, we need tha more than ever.

