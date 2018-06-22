function a = dial(X)
    a = 0; tmp = 0;
    for n = 1:1:length(X)
        if(~contains('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ', X(1, n)))
            a = uint64(0); return; end;
        
        if(contains('0123456789', (X(1, n))))
            tmp = str2num(X(1, n)); end;
        
        if(contains('ABC', X(1, n)))
            tmp = 2; end;
        
        if(contains('DEF', X(1, n)))
            tmp = 3; end;
        
        if(contains('GHI', X(1, n)))
            tmp = 4; end;
        
        if(contains('JKL', X(1, n)))
            tmp = 5; end;
        
        if(contains('MNO', X(1, n)))
            tmp = 6; end;
        
        if(contains('PQRS', X(1, n)))
            tmp = 7; end;
        
        if(contains('TUV', X(1, n)))
            tmp = 8; end;
        
        if(contains('WXYZ', X(1, n)))
            tmp = 9; end;
        
        a = a * 10 + tmp;
    end;
    a = uint64(a);