function n = palin_product(dig, lim)
    low = 10^(dig-1); high = 10^(dig);
    n = 0;
    for ii = low:1:high-1
        for jj = low:1:high-1
            if(ii * jj > lim) break; end;            
            if(ispalin(ii * jj) && (ii * jj ) < lim && (ii * jj) > n)
                n = ii * jj;
            end;
        end;
    end;
    
    
    function a = ispalin(n)
        a = true;
        n = num2str(n);
        l = length(n);
        for ii = 1:1:fix(l/2)
            if(n(1, ii) ~= n(1, l - ii + 1))
                a = false; return; end;
        end;
                
            
            
        
            
        