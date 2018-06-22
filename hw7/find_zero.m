function y = find_zero(f, x1, x2)
    if(f(x1) > 0)
        tmp = x1; x1 = x2; x2 = tmp; end;
    
    y = 1;
    while(abs(f(y)) > 1e-10)
          y = (x1 + x2) / 2;      
          if(f(y) > 0)
              x2 = y; end;
          if(f(y) < 0);
              x1 = y; end;
    end;