function n = number2letters(num)
    oneto20 = {'one'; 'two'; 'three'; 'four'; 'five'; 'six'; 'seven'; 'eight'; 'nine'; 'ten'; 'eleven'; 'twelve'; 'thirteen'; 'fourteen'; 'fifteen'; 'sixteen'; 'seventeen'; 'eighteen'; 'nineteen'; 'twenty'};
    tens = {'ten'; 'twenty'; 'thirty'; 'forty'; 'fifty'; 'sixty'; 'seventy'; 'eighty'; 'ninety'};
    
    n = 0;
    if(num > 100)
        n = n + length(oneto20{floor(num/100)}) + 7;
        num = num - 100 * (floor(num/100));
    end;
    
    if(num > 20)
        n = n + length(tens{floor(num/10)});
        num = num - 10 * (floor(num/10));
    end;
    
    if(num > 0)
        n = n + length(oneto20{num});
    end;
        