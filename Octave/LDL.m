function [L, D] = LDL(A)
  % A simetris
  [n, n] = size(A);

  % initialize  lower triangle matrix
  L = eye(n);

  for k=1:n-1
    for i=k+1:n
      % Find m untuk setiap baris i
      L(i, k) = A(k, i)/A(k, k);
      % Eliminasi baris i+1 .. n
      % A(i,:) = A(i,:) - L(i, k) * A(k,:);
      A(i,i:n) = A(i,i:n) - L(i,k) * A(k,i:n);
    endfor
  endfor

  D = diag(A);

endfunction