function ss = spiral_diag_sum(n)
    ss = 1; prev = 1; diff = 2;
    for level = 2:1:(ceil(n/2))
        ss = ss + layer(prev + diff, diff);
        prev = prev + diff * 4;
        diff = diff + 2;
    end;
    
    function tot = layer(a, d)
        n = 4; 
        tot = n / 2 * (2 * a + (n - 1) * d);