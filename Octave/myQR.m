function [R, bt] = myQR(A, b)
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
  
  % jangan lupa tukar vektor p
  
	% Ambil dari baris k sampai m saja, pada kolom ke-k
  e1 = zeros(m - k + 1, 1);
	e1(1) = 1;
  v = A(k:m, k) + sign(A(k,k)) * norm(A(k:m,k)) * e1;
	alpha = 2/(v' * v);
	for j=k:n+1
		A(k:m, j)= A(k:m, j) - alpha * v' * A(k:m, j) * v;
	endfor
  R = A(:, 1:n);
  bt = A(:, n+1);
endfor
endfunction
