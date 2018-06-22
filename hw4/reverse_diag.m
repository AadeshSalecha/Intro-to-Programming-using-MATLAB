function X = reverse_diag(n)
X = zeros(n)
X(n:n-1:n*n-1) = 1