% Add reference implementation to search path.
addpath('kde');

% Generate 1000 data points from normal distribution.
rng(1);
N = 1000;
x = randn(N, 1);

% Estimate 1d density within +/- 5 standard deviations.
l = 5;
n = 256;
[bandwidth, density, grid, cdf] = kde(x, n, -l, +l);
