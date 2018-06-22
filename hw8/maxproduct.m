function a = maxproduct(A, n)
    a = []
    mprod = 0;
    tmp = size(A); r = tmp(1, 1); c = tmp(1, 2);
    
    % cols and rows
    for i = 1:1:c
        [ind col] = max_product1D(A(:, i)', n);
        if(col > mprod)    
            mprod = col; 
            a = [ind:1:n+ind-1; ones(1, n)*i]';
        end;
    end;
   
    for i = 1:1:r        
        [ind row] = max_product1D(A(i, :), n);
        if(row > mprod)
            mprod = row;
            a = [ones(1, n)*i; ind:1:n+ind-1]';
        end;              
    end;
    
    
    % right to left diagonals
    for tr = 1:1:r-n+1
        for tc = 1:1:c-n+1
            [ind tmp] = max_product1D(diag(A(tr:1:tr+n-1, tc:1:tc+n-1))', n);
            if(tmp > mprod)
                mprod = tmp; 
                a = [tr:1:tr+n-1; tc:1:tc+n-1]';
            end;
    end; end;

    for tr = 1:1:r-n+1
        for tc = c:-1:n
            [ind tmp] = max_product1D(diag(A(tr:1:tr+n-1, tc:-1:tc-n+1))', n);
            if(tmp > mprod)
                mprod = tmp; 
                a = [tr:1:tr+n-1; tc:-1:tc-n+1]';
            end;
    
    end; end;


    function [mind, mprod] = max_product1D(v, n)
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
        
    