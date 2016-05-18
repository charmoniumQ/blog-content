---
layout: post
title:  "Ansible and abstraction?"
date:   2016-05-13 12:53:38 -0500
tags: linux
excerpt: >
  This has been the direction of computer systems since they first began: As the
  raw parts of a computer become cheaper and smaller, the systems built out of
  computers become more complex and intricate, and engineers need to build
  abstractions to manage that higher complexity
---

You could do everything that is done with a configuration management tool like
ansible through standard shell scripts. Configuration managers just gives you a
higher level of abstraction, which gives two advantages: ease of use and more
generalization at the cost of speed and granularity.

### Configuration management is so good


High-level commands make configuration through ansible much easier than
configuration through shell. For example, without ansible's `lineinfile`, I
would have to use a `sed` script, but `sed` is comparatively more difficult to
understand. The more important advantage is that ansible configuration is more
general. It can be reused on many systems across different OSes and with
different parameters. Not all ansible playbooks are cross-platform, and
conversely it is possible for shell scripts to be cross platform, it is just
much more difficult and less common.

### Configuration management is so bad

But all of these things mean that it is slower than a traditional shell
script. A single command like `lineinfile` goes through many more layers before
it gets down to actually changing a line in a file. Meanwhile, the increased
generality achieved by ignoring specific details results in a loss of
granularity. Sometimes you need to do a very specific operation like use
specialized flags on `apt-get` for which there is no option in ansible's
`apt_package` module.

### Broad sweeping generalizations time!

This has been the direction of computer systems since they first began: As the
raw parts of a computer become cheaper and smaller, the systems built out of
computers become more complex and intricate, and engineers need to build
abstractions to manage that higher complexity. This is why C++ was built from C
and why C was built from assembly. The only way to manage increasing complexity
is with increasing abstraction which provides ease of use and reusability at
the cost of granularity and speed. (It is possible that the overall speed would
be faster, but that would be from hardware improvements. Try running modern
software on an old computer. Perhaps I should say 'directness'
instead of 'speed').

### Everyone likes the future

I can't wait to see what the future holds. It will probably be much more
complex. Its designers would speak a few words and it would have the same
impact as our designers speaking several volumes. Finally they would be free
from mindless minutiae and would be able to focus on critical big-picture
tasks. But in all likelihood, they would see the same problem we do today, just
from a higher scope. They would have a more strict idea of what is important
essence and consider more to be trivial detail. They would architect ever
higher towers of abstractions built on abstractions built on abstractions.

Now I'm starting to sound like one of those technological-singularity people. I
guess that means I should stop.
