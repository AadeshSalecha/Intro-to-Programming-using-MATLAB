function ss = sum3and5muls(n)
ss = s(3, n) + s(5, n) - s(15, n);

function s = s(a, E)
n = floor(E / a)
s = (2 * a + (n-1) * a) * n / 2