2;
function [A] = getBanded(n, p, q)
  A = zeros(n, n);
  for j=1:n
    for i=max(j-p, 1):min(j+q, n)
      A(i,j) = rand();
    endfor
  endfor
endfunction

function [A] = getBanded2(n, p, q)
  A = rand(n, n);
  for i=1:n
    for j=1:n
      if(j > i + p)
        A(i,j) = 0;
      endif
      if(i > j + q)
        A(i,j) = 0;
      endif
    endfor
  endfor
endfunction

function [L U] = LU(A, p, q)
  [n n] = size(A);
  L = eye(n);
  % Looping setiap kolom
  for k=1:n-1
    % Untuk baris ke bawahnya
    for i=k+1:min(k+q, n)
      % Hitung L nya
      L(i, k) = A(i, k)/A(k,k);
      A(i, k) = 0;
      % Lakukan pengurangan untuk baris ke-i
      for j=k+1:min(k+p, n)
        % Sampai k + p saja, karena kanan sisanya sudah 0
        A(i, j) -= L(i, k) * A(k, j);
      endfor
    endfor
  endfor
  U = A;
endfunction

n = 6; p = 2; q = 3;
A = getBanded2(n, p, q);
disp(A);
[L U] = LU(A, p, q);
disp(L); disp(U);
disp(L * U - A);