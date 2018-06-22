function a = accelerate(F1, F2, m)
a = (F1 + F2)./m;
a = (sqrt(a(1,1)^2 + a(2,1)^2 + a(3,1)^2));
