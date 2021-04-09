function x = backward_sub(U, b)
  % This solves Ux = b
  [n n] = size(U);
  x = zeros(n, 1);
  x(n) = b(n)/U(n, n);
  for i = (n - 1):-1:1
    x(i) = b(i) - U(i, i+1:n) * x(i+1:n);
    x(i) /= U(i, i);
  endfor
endfunction