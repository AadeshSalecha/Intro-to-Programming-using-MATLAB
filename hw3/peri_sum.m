function ss = peri_sum(A)
ss = sum(A(1, :)) + sum(A(2:end-1,1)) + sum(A(end, :)) + sum(A(2:end-1, end))    
    