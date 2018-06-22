function [e, k] = approximate_e(delta)
    e = 0; k = 0;
    while(abs(exp(1) - e) > delta)
        e = e + (1 / fact(k));
        k = k + 1;
    end;
    k = k - 1;
    
    
    function a = fact(n)
        a = 1;
        for n = 1:1:n
            a = a * n;
        end;