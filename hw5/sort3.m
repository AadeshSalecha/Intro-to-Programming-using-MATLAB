function [c, b, a] = sort3(V)
    if(size(V) == [3 1])
        V = V'; end;
    
    a = V(1,1); b = V(1, 2); c = V(1, 3);
    if(b > a)
        temp = a;
        a = b;
        b = temp;
        end;
    if(c > a)
        temp = a;
        a = c;
        c = temp;
        end;
    if(c > b)
        temp = c;
        c = b;
        b = temp;
        end;
    return;        
    
    