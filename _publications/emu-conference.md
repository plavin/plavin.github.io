---
title: "An initial characterization of the Emu Chick"
collection: publications
permalink: /publication/2010-10-01-paper-title-number-2
excerpt: 'This paper is about the number 2. The number 3 is left for future work.'
date: 2018-05-21
venue: 'IPDPS'
paperurl: 'https://ieeexplore.ieee.org/abstract/document/8425464'
citation: 'Eric Hein, Tom Conte, Jeffrey Young, Srinivas Eswar, Jiajia Li, Patrick Lavin, Richard Vuduc, Jason Riedy. (2018). &quot;An initial characterization of the Emu Chick.&quot; <i>IPDPS</i>.'
---
Abstract: The Emu Chick is a prototype system designed around the concept of migratory memory-side processing. Rather than transferring large amounts of data across power-hungry, high-latency interconnects, the Emu Chick moves lightweight thread contexts to near-memory cores before the beginning of each memory read. The current prototype hardware uses FPGAs to implement cache-less "Gossamer" cores for doing computational work and a stationary core to run basic operating system functions and migrate threads between nodes. In this initial characterization of the Emu Chick, we study the memory bandwidth characteristics of the system through benchmarks like STREAM, pointer chasing, and sparse matrix vector multiply. We compare the Emu Chick hardware to architectural simulation and Intel Xeon-based platforms. While it is difficult to accurately compare prototype hardware with existing systems, our initial evaluation demonstrates that the Emu Chick uses available memory bandwidth more efficiently than a more traditional, cache-based architecture. Moreover, the Emu Chick provides stable, predictable performance with 80% bandwidth utilization on a random-access pointer chasing benchmark with weak locality.

