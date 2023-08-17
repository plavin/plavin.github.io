---
title: "Online model swapping for architectural simulation"
collection: publications
permalink: /publication/model-swapping
excerpt: 'We present a framework and initial implementation of a novel technique for accelerating architectural simulation by dynamically changing the level of fidelity of simulation components.'
date: 2021-05-01
venue: 'Internation Conference on Computing Frontiers'
paperurl: 'https://dl.acm.org/doi/abs/10.1145/3457388.3458670'
citation: '<b>Patrick Lavin</b>, Jeffrey Young, Richard Vuduc, Jonathan Beard. (2021) &quot;Online model swapping for architectural simulation.&quot; <i>Computing Frontiers.</i>'
---
As systems and applications grow more complex, detailed computer
architecture simulation takes an ever increasing amount of time.
Longer simulation times result in slower design iterations which
then force architects to use simpler models, such as spreadsheets,
when they want to iterate quickly on a design. Simple models are
not easy to work with though, as architects must rely on intuition to
choose representative models, and the path from the simple models
to a detailed hardware simulation is not always clear.

In this work, we present a method of bridging the gap between
simple and detailed simulation by monitoring simulation behavior
online and automatically swapping out detailed models with simpler
statistical approximations. We demonstrate the potential of our
methodology by implementing it in the open-source simulator
SVE-Cachesim to swap out the level one data cache (L1D) within
a memory hierarchy. This proof of concept demonstrates that our
technique can train simple models to match real program behavior
in the L1D and can swap them in without destructive side-effects
for the performance of downstream models. Our models introduce
only 8% error in the overall cycle count, while being used for over
90% of the simulation and using models that require two to eight
times less computation per cache access.

