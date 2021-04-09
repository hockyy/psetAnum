function [L, D] = QR(A)
for k=1:n
	% Ambil dari baris k sampai m saja, pada kolom ke-k
	e1 = zeros(m - k + 1, 1);
	v = A(k:m, k) + sign(A(k,k)) * norm(A(k:m,k),2) * e1;
	alpha = 2/(v' * v);
	for j=k:n+1
		A(k:m, j)= A(k:m, j) - alfa * v' * A(k:m, j) * v;
	endfor
endfor
endf