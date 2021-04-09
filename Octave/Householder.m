function [R, bt] = Householder(A, b)
[m n] = size(A);
A = [A b];
p = 1:n
for k=1:n
  
  % cari kolom dengan norm terbesar
  for i=k:n
     normv(i) = norm(A(k:m,i));
  end
	[maksi pos] = max(normv);
  pos = pos + k - 1;
  
  % Q' (A P) = R
  % tukar kolom ke pos, dan kolom ke-k
  
  %tmp = A(:, pos)
  %A(:, pos) = A(:, k)
  %A(:, k) = tmp
  
  % jangan lupa tukar vektor p
  %tmp = p(k)
  %p(k) = p(pos)
  %p(pos) = tmp
  
	% Ambil dari baris k sampai m saja, pada kolom ke-k
  e1 = zeros(m - k + 1, 1);
	e1(1) = 1;
  v = A(k:m, k) + sign(A(k,k)) * norm(A(k:m,k)) * e1;
  if(v' * v == 0)
    continue
  end
	alpha = 2/(v' * v);
	for j=k:n+1
		A(k:m, j)= A(k:m, j) - alpha * v' * A(k:m, j) * v;
	end
  R = A(:, 1:n);
  bt = A(:, n+1);
end
end

A = rand(5, 5);
A(:, 3) = 2 * A(:, 2);
A(:, 1) = 2 * A(:, 3) - A(:, 5);
b = rand(5, 1);