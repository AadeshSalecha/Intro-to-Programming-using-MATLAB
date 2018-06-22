function c = logipack(X)
    for ii = 1:1:length(X)
        c{1, ii} = []
    end;
    
    for ii = 1:1:length(X)
        for jj = 1:1:length(X)
            if(X(ii, jj))
                c{1, ii} = [c{1, ii} jj];
            end;
        end;
    end;
      