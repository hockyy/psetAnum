
[L U] = tmp(A);

[n, n] = size(A);

L = eye(n);

for i=1:n-1
  for j=i+1:n
    
    L(i,j) = A(j,i)/A(i,i);
    
    % Eliminasi baris i+1 .. n
    A(j,:) = A(j,:) - L(i,j) * A(i,:);
  endfor
endfor

U = A;

