function a = year2016(month)
    month_names = {'January'; 'February'; 'March'; 'April'; 'May'; 'June'; 'July'; 'August'; 'September'; 'October'; 'November'; 'December'};
    day_names = {'Mon'; 'Tue'; 'Wed'; 'Thu'; 'Fri'; 'Sat'; 'Sun'};
    dmonths = [31 29 31 30 31 30 31 31 30 31 30 31];
    % Friday - jan 1
    
    if(length(month) ~= 1 || month < 1 || month > 12 || month ~= fix(month)) a = []; return; end;
        
    day = 4; 
    if(month ~= 1) day = day + sum(dmonths(1:month-1)); day = rem(day, 7); end;
    
    for n = 1:1:dmonths(1, month)     
        %day
        a(1, n) = struct('month', month_names{month, 1}, 'date', n, 'day', day_names(day+1, 1));
        day = rem(day + 1, 7);
    end;
    
    %a(1,1) = struct('month', month_names(2), 'date', n, 'day', day_names(1,day))