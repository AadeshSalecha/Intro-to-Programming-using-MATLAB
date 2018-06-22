function lc  = smallest_multiple(n)
    lc = uint64(1);
    for i = 1:1:n
        lc = uint64(lcm(lc, i)); 
    end;    
     if(lc > intmax('uint64'))
            lc = uint64(0);
     end;
            
45 = 9419588158802421600     