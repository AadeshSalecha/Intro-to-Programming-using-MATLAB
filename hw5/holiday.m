function a = holiday(m, d)
    a = false;
    if((m == 1 && d == 1) || (m == 12 && d == 25) || (m == 7 && d == 4) || (m == 12 && d == 31))
        a = true; end;
    