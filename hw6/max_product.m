function [mprod, mind] = max_product(v, n)
    tmp = size(v); r = tmp(1, 1); c = tmp(1, 2);
    mind = 1; mprod = 1;
    
    if(r > c) v = v'; tmp = c; c= r; r = tmp; end;
    if(c < n)
        mprod = 0; mind = -1; return; end;
    
    % first n
    cprod  = 1;
    for ii = 1:1:n
        cprod = cprod * v(1, ii);
    end;

   mprod = cprod;
    % from n
    for ii = n+1:1:c
        cprod = cprod * v(1, ii) / v(1, ii - n);        
        if(cprod > mprod) mprod = cprod; mind = ii - n + 1; end;
    end;        
        
    