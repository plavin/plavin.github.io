---
title: "A microbenchmark characterization of the emu chick"
collection: publications
permalink: /publication/emu-parco
excerpt: 'We extended our IPDPS paper to '
date: 2019-09-01
venue: 'Parallel Computing'
paperurl: 'https://www.sciencedirect.com/science/article/pii/S0167819118302503'
citation: 'Jeffrey S Young, Eric Hein, Srinivas Eswar, **Patrick Lavin**, Jiajia Li, Jason Riedy, Richard Vuduc, Tom Conte. (2019). &quot;An initial characterization of the Emu Chick.&quot; <i>Parallel Computing</i>.'
---
The Emu Chick is a prototype system designed around the concept of migratory memory-side processing. Rather than transferring large amounts of data across power-hungry, high-latency interconnects, the Emu Chick moves lightweight thread contexts to near-memory cores before the beginning of each memory read. The current prototype hardware uses FPGAs to implement cache-less “Gossamer” cores for computational work and rely on a typical stationary core (PowerPC) to run basic operating system functions and migrate threads between nodes. In this multi-node characterization of the Emu Chick, we extend an earlier single-node investigation [1] of the memory bandwidth characteristics of the system through benchmarks like STREAM, pointer chasing, and sparse matrix-vector multiplication. We compare the Emu Chick hardware to architectural simulation and an Intel Xeon-based platform. Our results demonstrate that for many basic operations the Emu Chick can use available memory bandwidth more efficiently than a more traditional, cache-based architecture although bandwidth usage suffers for computationally intensive workloads like SpMV. Moreover, the Emu Chick provides stable, predictable performance with up to 65% of the peak bandwidth utilization on a random-access pointer chasing benchmark with weak locality.

