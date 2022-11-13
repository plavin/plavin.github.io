---
title: "Evaluating Gather and Scatter Performance on CPUs and GPUs"
collection: publications
permalink: /publication/spatter
excerpt: 'This paper describes our memory micro-benchmark, [Spatter](https://github.com/hpcgarage/spatter), which will be included in ATS-5.'
date: 2020-09-01
venue: 'The International Symposium on Memory Systems'
paperurl: 'https://dl.acm.org/doi/abs/10.1145/3422575.3422794'
citation: '<b>Patrick Lavin</b>, Jeffrey Young, Richard Vuduc, Jason Riedy, Aaron Vose, Daniel Ernst. (2020) &quot;Evaluating Gather and Scatter Performance on CPUs and GPUs.&quot; <i>MEMSYS</i>'
---
This paper describes a new benchmark tool, Spatter, for assessing
memory system architectures in the context of a specific category
of indexed accesses known as gather and scatter. These types of
operations are increasingly used to express sparse and irregular data
access patterns, and they have widespread utility in many modern
HPC applications including scientific simulations, data mining and
analysis computations, and graph processing. However, many traditional benchmarking tools like STREAM, STRIDE, and GUPS
focus on characterizing only uniform stride or fully random accesses
despite evidence that modern applications use varied sets of more
complex access patterns.

Spatter is an open-source benchmark that provides a tunable and
configurable framework to benchmark a variety of indexed access
patterns, including variations of gather / scatter that are seen in HPC
mini-apps evaluated in this work. The design of Spatter includes
backends for OpenMP and CUDA, and experiments show how it can
be used to evaluate 
1. uniform access patterns for CPU and GPU,
2. prefetching regimes for gather / scatter
3. compiler implementations of vectorization for gather / scatter, and
4. trace-driven “proxy patterns” that reflect the patterns found in multiple applications. 

The results from Spatter experiments show, for instance, that GPUs typically outperform CPUs for these operations in absolute bandwidth
but not fraction of peak bandwidth, and that Spatter can better represent the performance of some cache-dependent mini-apps than
traditional STREAM bandwidth measurements.

