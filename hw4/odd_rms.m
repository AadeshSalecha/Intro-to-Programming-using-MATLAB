function orms = odd_rms(nn)
orms = sqrt(sum(((1:2:2*nn).^2)')/nn);    