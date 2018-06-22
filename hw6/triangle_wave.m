function ts = triangle_wave(n)
    ts = 0:(4*pi/1000):4*pi;
    for ii = 1:1:1001
        ts(1, ii) = f(ts(1, ii), n);
    end;
    
    function ss = f(t, n)
        ss = 0;
        for k = 0:1:n
            tmp = -1;
            if(rem(k, 2) == 0)
                tmp = 1;
            end;                
                
            ss = ss + tmp * (sin((2*k+1)*t) / (2*k+1)^2);
        end;            