function [L, U] = test(A)

  [n, n] = size(A);

  % initialize lower triangle matrix
  L = eye(n);

  for k=1:n-1
    for i=k+1:n
      % Find m untuk setiap baris i
      L(i, k) = A(i,k)/A(k, k);  
      % Eliminasi baris i+1 .. n
      A(i,:) = A(i,:) - L(i, k) * A(k,:);
    endfor
  endfor

  U = A;

endfunction