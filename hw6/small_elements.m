function a = small_elements(X)
    tmp = size(X); r = tmp(1,1); c = tmp(1, 2);
    a = [];
    for cc = 1:1:c
        for rr = 1:1:r
            if(X(rr, cc) < rr * cc)
                a = [a; [rr cc]];
            end;
        end;
    end;