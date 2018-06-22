function a = integerize(A)
    a = 'NONE';
    high = max(A(:)');
    low = min(A(:)');
    
    if(low >= intmin('int8') && high <= intmax('int8'))
        a = 'int8';   
    
    elseif(low >= intmin('int16') && high <= intmax('int16'))
        a = 'int16';
   
    elseif(low >= intmin('int32') && high <= intmax('int32'))
        a = 'int32';
    
    elseif(low >= intmin('int64') && high <= intmax('int64'))
        a = 'int64';
    end;