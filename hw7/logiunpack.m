function mat = logiunpack(X)
    n = length(X);
    mat = zeros(n, n);
    
    for ii = 1:1:n      
        if(length(X{1, ii}) ~= 0)         
            mat(ii, X{1, ii}) = true;
        end;
    end;
    mat = logical(mat);