function [b, a] = light_speed(X)
c = 300000;
mile = 1.609;

a = X.*(1/mile)
b = X./(c*60)