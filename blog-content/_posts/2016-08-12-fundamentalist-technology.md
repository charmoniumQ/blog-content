---
layout: post
title:  "Fundamentalist technology"
categories: programming
excerpt: >
  There are few techniques that are globally applicable in software development,
  be it REST, agile methodology, python, or linux. But we like to act is if that
  were the case. Instead we need to be flexible and pragmatic and <i>use the right
  tool for the job</i>.

---

Fundamentalist technology
=========================

> Let's make a JSON RESTful microservice with big data on the EC2 cloud using MongoDB and internet-of-things integration... -- Pretty much everyone at a hackathon

There are few techniques that are globally applicable in software development. But we like to act is if that were the case.

This is most apparent in programming languages. You have headstrong engineers who insist that their programming language is better than yours, with cult-like devotion. Most of the time, programming languages have different strengths and weaknesses, so the 'best' programming language depends on the problem. It religious zealotry when they don't hear out arguments against their language of choice. But that insistence is mostly unfounded. Look at the sentiment on [this quora question](https://www.quora.com/What-are-the-best-programming-languages-to-learn-today) on the 'best programming language' with many comments like "depends on what you want to optimize" and "it's far more important to learn to be a good programmer."

Managers and investors have a different set of biases about programming languages: they insist on using what everyone else is using. They know that Java on tomcat is a popular choice for web development. They block out other options like Ruby on Rails, which might better suit a startup that needs to [go from 0 to 60](https://www.minddigital.com/ruby-on-rails-for-robust-and-rapid-development/), because of their fundamentalist belief that some programming language or technique is the *only* way. What's worse is when they prevent an innovative solution from being developed because "it's [not industry standard](http://paulgraham.com/icad.html)." That utterance is the sound of a good idea dying a painful death in a company that reeks of mediocrity.

There is some value in using languages you have deep prior knowledge of, but there is also value in keeping your mind sharp by learning new things. Technology is changing so fast that the tools you feel comfortable with may not be relevant anymore. There is also value in using a technique that has a large community for support, but that argument is often weighed too heavily against other more direct advantages.

Human tendency is to jump on the hype bandwagon and follow the crowd. It is the underlying habit of humans to fall into [groupthink](https://en.wikipedia.org/wiki/Groupthink) caused by laziness. It isn't an overt laziness like shirking duty or skipping work, it is a subconscious laziness that avoids critical evaluation of one's own opinions. It isn't too dissimilar from the echo-chamber of our political environment, or a naked emperor who claims that only the intelligent are able to see his clothes.

The next time you hear "do this because it is more RESTful", you should ask yourself "why are we embracing REST here. Does it make sense?" That way you justify your design decisions based on the problem itself, not some principle you have forced your solution to conform to. Don't be afraid to question the prevailing wisdom like a [gadfly](https://en.wikipedia.org/wiki/Social_gadfly). "Yes, I know this diverges from the principles of REST, but our multi-part search query isn't conducive to RESTful URI design since the components are not hierarchical."

I leave you with the old Unix adage of pragmatism: _use the right tool for the job_.

_Originally written for [The Home Depot's engineering blog](http://engineering.homedepot.com/blogs/online/2016/08/04/fundamentalist-technology/)_
