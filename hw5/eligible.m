function a = eligible(v, q)
    a = false;
    if ((v+q)/2 >= 92) && (v > 88) && (q > 88)
        a = true;
    end
    return