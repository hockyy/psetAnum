function [L, U] = Kelas3(A)

  [n, n] = size(A);

  % initialize lower triangle matrix
  L = eye(n);

  for k=1:n-1
    for i=k:n
      % Find m
      L(i, k) = A(i, k)/A(k, k);
      % Eliminasi baris i+1 .. n
      A(k,:) = A(k,:) - L(j, i) * A(k,:);
    endfor
  endfor

  U = A;

endfunction