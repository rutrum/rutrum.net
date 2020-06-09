+++
title = "Calculating M(n)"
description = "Calculating M(n) for values up to 2^30 and beyond."
date = 2020-03-01
+++

Calculating values of M(n) is now linear in memory since Dr. Jonathon Webster and I have created and implemented a new solution.

<!-- more -->

M(n) is defined as the number of distinct integers in the n by n multiplication table.  Dr. Jonathon Webster and I at Butler University have implemented an algorithm in C++ to determine values of M(n) for n up to 2<sup>30</sup>.  The algorithm uses linear space complexity and has been implemented in parallel.

I presented a [poster](http://www.math.grinnell.edu/~paulhusj/ants2018/ppresent.html) with Jonathon Webster at ANTS 2018 in Madison, Wisconsin.  The poster discussed the history of the problem and the new algorithm we implemented to calculate M(n) in asymptotically less space, and practically less time.

At Butler University's Undergraduate Research Conference I presented my contribution to the problem and optimizations on the algorithm.  I gave [this presentation](https://slides.com/rutrum/urc2019/#/) in April of 2019.  In addition, I created a [website](https://rutrum.github.io/multiplication-table) that visualizes the problem by generating graphics that represent the algorithm at different values of n.

Most recently, the poster has been [submitted to arXiv](https://arxiv.org/abs/1908.04251).
