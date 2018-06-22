function [a, avg] = sindeg(deg)
rad = (deg.*pi)./180;
a = sin(rad);
n = size(a(:));
avg = sum(a(:)) / n(1,1);