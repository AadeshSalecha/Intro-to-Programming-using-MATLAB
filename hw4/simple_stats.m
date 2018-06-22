function S = simple_stats(N)
means = (mean(N'))';
medians = (median(N'))';
mins = (min(N'))';
maxs = (max(N'))';
S = [means medians mins maxs];