function n = digit_counter(in)
    file = fopen(in, "r");
    if(file < 0)
        n = -1; return; end;
    
    n = 0; line = fgets(file);
    while(ischar(line))
        for i = 1:length(line)
            if(contains("1234567890", line(1, i)))
               n = n + 1; end;
        end;
        line = fgets(file);
    end;        
    