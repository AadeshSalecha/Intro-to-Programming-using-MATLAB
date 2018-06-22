function tot = fare(dist, age)
    tot = 2; 
    
    if(dist > 10)
        tot = tot + 0.25 * 9 + round(dist-10) * 0.1       
    elseif(dist < 10 && dist > 1)
        dist = dist - 1;
        tot = tot + 0.25 * round(dist)
    end
    
    if(age <= 18 || age >= 60)
        tot = 0.8 * tot
    end
        
        