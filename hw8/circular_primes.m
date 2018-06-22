function count = circular_primes(n)
    a = ones(1, 10^(fix(log10(n)) + 1));
    a(1,1) = 0;
    
    for i = 1:1:10^(fix(log10(n)) + 1)
        if(a(i))
            for j = i*i:i:10^(fix(log10(n)) + 1)
                a(j) = 0;
     end; end; end;               
    
    count = 0;
        for num = 1:1:n-1            
            if(a(num))
                circular = true;                
                str = num2str(num);

                for i = 1:1:length(str)
                    if(~a(str2num(circshift(str, i))))
                        circular = false; break; end;
                end;                                
                
                if(circular)
                    num
                    str = num2str(num);
                    count = count + 1;
                end;
            end;end;

    

    