![Screenshot (407)](Kelas6.assets/Screenshot (407).png)

Quadratic regression

```octave
A = [0,0,1;1,1,1;4,2,1;9,3,1];
y = [3;6;9;12];
% Solve A'Ax = A'y
% x = (A'A)\(A'y)
% Output error
r = norm(A * x - y);
disp(r);
```

