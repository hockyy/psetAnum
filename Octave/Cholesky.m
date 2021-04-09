function [G] = Cholesky(A)  % A is defined to be positive definite symmetric matrix;  [n n] = size(A);   G = zeros(n, n);  for k=1:n    G(k, k) = sqrt(A(k,k) - sumsq(G(k,1:k-1)));    for i=k+1:n      G(i, k) = (A(i, k) - G(i,1:k-1) * G(k, 1:k-1)')/G(k, k);    endfor
  endfor  % Costnya sekitar n^3/6
endfunction