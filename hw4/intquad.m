function Q = intquad(n, m)
a = zeros(n, m);
b = ones(n, m);
c = b*2;
d = b*3;
Q = [a b; c d];
    