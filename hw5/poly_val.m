function p = poly_val(c0, c, x)
    s = size(c); rows = s(1,1); cols = s(1, 2);
    if(rows > cols)
        c = c'; temp = rows; rows = cols; cols = temp; end;
    
    x_raised = x.^(1:1:cols);
    c = c.*x_raised;
    p = c0 + sum(c');

    