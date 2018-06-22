function res = huge_add(a, b)
    if(~isValid(a) || ~isValid(b))
        res = -1; return; end;
    
    if(length(a) < length(b))
        tmp = a; a = b; b = tmp; end;
    
    res = ''; carry = 0;
    for i = 1:1:length(b)
        tmp = str2num(b(length(b)-i+1)) + str2num(a(length(a)-i+1)) + carry;        
        carry = floor(tmp / 10);         
        tmp = mod(tmp, 10);
        res = [num2str(tmp) res];
    end;
    
    for i = length(a)-length(b):-1:1
        tmp = str2num(a(i)) + carry;
        carry = floor(tmp / 10);
        tmp = mod(tmp, 10);
        res = [num2str(tmp) res];
    end;    
                
    if(carry)
        res = [num2str(carry) res];        
    end;    
    
    function b = isValid(n)
        if(~ischar(n))
            b = false; return; end;
        for i = 1:1:length(n)
            if(~contains("1234567890", n(1, i)))
                b = false; return; end;
        end;            
        b = true;