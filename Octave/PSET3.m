1;

function x = backward_sub(U, b)
  % This solves Ux = b
  [n n] = size(U);
  x = zeros(n, 1);
  x(n) = b(n)/U(n, n);
  for i = (n - 1):-1:1
    x(i) = b(i) - U(i, i+1:n) * x(i+1:n);
    x(i) /= U(i, i);
  endfor  
  x;
endfunction

function x = forward_sub(L, b)
  % This solves Lx = b
  [n n] = size(L);
  x = zeros(n, 1);
  x(1) = b(1)/L(1, 1);
  for i = 2:n
    x(i) = b(i) - L(i, 1:i) * x(1:i);
    x(i) /= L(i, i);
  endfor
  display(x);
endfunction


L = [1,0,0;2,1,0;3,4,1];
U = [6,5,4;0,3,1;0,0,1];
b = [5;9;12];

y = forward_sub(L, b);
display(y);
x = backward_sub(U, y);
display(x);