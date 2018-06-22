function mons = day_counter(inyear)    
    months = [31 28 31 30 31 30 31 31 30 31 30 31];
    
    % 1776 1st jan was a Monday
    day = 0;mons = 0;
    for cur_year = 1776:1:inyear-1
        day = day + 365;
        if(is_leap(cur_year))
            day = day + 1; end;
    end;    
    day = mod(day, 7);
    
    if(is_leap(inyear))
        months(1, 2) = 29; end;
    
    for m = 1:1:12
        if(day == 0)
            %fprintf("%d\n", m);
            mons = mons + 1; end;
        day = mod(day + months(m), 7);
    end;    
    
    
    function b = is_leap(year)
        b = false;
        if((mod(year, 4) == 0 && mod(year, 100) ~= 0) || mod(year, 400) == 0)
            b = true; end;
        
        