function diff = day_diff(m1, d1, m2, d2)
    months = [31 28 31 30 31 30 31 31 30 31 30 31];
    a = size(m1); b = size(m2); c = size(d1); d = size(d2);
    if(a(1,2) ~= 1 || a(1, 1) ~= 1 || b(1,2) ~= 1 || b(1, 1) ~= 1 || c(1,2) ~= 1 || c(1, 1) ~= 1 ||d(1,2) ~= 1 || d(1, 1) ~= 1 || d1 < 1 || d2 < 1)
        diff = -1; return; end;
    if(m1 < 1 || m1 > 12 || m2 < 1 || m2 > 12 || m1 ~= fix(m1) || m2 ~= fix(m2) || d1 ~= fix(d1) || d2 ~= fix(d2) || months(1, m1) < d1 || months(1, m2) < d2)
        diff = -1; return; end;
   
    
    if(m2 > m1 || (m1 == m2 && d2 > d1))
        temp = m1; m1 = m2; m2 = temp;
        temp = d1; d1 = d2; d2 = temp;
    end;
    
    if(m1 ~= m2)
        diff = (months(1, m2) - d2) + sum((months(m2 + 1:m1-1)), 2) + d1;
    else
        diff = d1 - d2; end;
        