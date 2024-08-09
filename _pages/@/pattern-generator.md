---
layout: default
title: "Pattern Generator"
context: "Experiment"
description: "A simple system to generate complex patterns"
created: 2023-08-25
---

![](/images/pattern-generator-2.png)

Fun little pattern generator I made a while back, where from constrained randomness at different scales new patterns emerge. Starting with a set of 2x2 pixel patterns, then 4x4, 8x8... and so on. Each time recombining from the set of patterns in the last layer in a pre-defined set of possible horizontal and rotational symmetries.

![](/images/pattern-generator.png)

Unfortunately generating random patterns on a grid with rotational symmetries very commonly leads to generating swastikas in the pattern, and they can emerge at any scale so it's hard to really do anything to fix this problem without completely changing the geometry of this pattern-space.