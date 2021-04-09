n = 4;
A = rand(n, n); U = triu(A); b = rand(n, 1); x = zeros(n, 1);
x(n) = b(n)/U(n, n);
for i = (n - 1):-1:1
    x(i) = b(i) - U(i, i+1:n) * x(i+1:n);
    x(i) /= U(i, i);
end
display(U); display(b); display(x);
% Compute error for U*x - b = 0
v = U*x - b;
er = norm(v, Inf)
display(er);
% Values vary from 0 to 2e-15