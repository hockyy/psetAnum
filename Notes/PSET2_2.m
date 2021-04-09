n = 4;
A = rand(n, n); b = rand(n, 1); x = zeros(n, 1);

% n = 2
% A = [1, 1; -3, 1]; b = [6; 2]; x = zeros(n, 1);
% x = 1, y = 5

augmented = [A, b];
display(augmented);
for i=1:n
  for j=i+1:n
    m = augmented(j,i)/augmented(i,i);
    augmented(j, i) = 0;
    for k=(i+1):(n+1)
      augmented(j, k) -= m * augmented(i, k);
    endfor
  endfor
endfor

U = augmented; U(:,n+1) = [];
display(augmented);
display(U); 
btilde = augmented; btilde(:,1:n) = []
display(btilde);
x(n) = btilde(n)/U(n, n);
for i = (n - 1):-1:1
    x(i) = btilde(i) - U(i, i+1:n) * x(i+1:n);
    x(i) /= U(i, i);
end

display(x)
% Compute error for A*x - b = 0
v = A*x - b;
er = norm(v, Inf)
display(er);