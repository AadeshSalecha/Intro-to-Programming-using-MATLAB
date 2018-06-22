function a = zero_stat(N)
d = size(N)
n = d(1,1) * d(1, 2)
a = ((n - sum(sum(N)')) / n) * 100;    