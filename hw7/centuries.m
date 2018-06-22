function r = centuries(year)
    if(length(year) ~= 1 || year ~= fix(year) || year < 1 || year > 3000)
        r = ''; return; end;
    
    century = ceil(year / 100);
    r = convert(century);
    
    
    function r = convert(c)
        r = '';
        f = floor(c / 10);
        if(f == 1)
            r = 'X'; end;
        if(f == 2)
            r = 'XX'; end;
        if(f == 3)
            r = 'XXX'; end;
        
        s = mod(c, 10); tmp = '';
        if(s == 1)
            tmp = 'I'; end;
        if(s == 2)
            tmp = 'II'; end;
        if(s == 3)
            tmp = 'III'; end;
        if(s == 4)
            tmp = 'IV'; end;
        if(s == 5)
            tmp = 'V'; end;
        if(s == 6)
            tmp = 'VI'; end;
        if(s == 7)
            tmp = 'VII'; end;
        if(s == 8)
            tmp = 'VIII'; end;
        if(s == 9)
            tmp = 'IX'; end;
        r = sprintf('%s%s', r, tmp);
        