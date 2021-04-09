- Metode numerik tidak menyelesaikan masalah di dunia nyata tapi menyelesaikan masalah matematis.

$$
r = \frac{p}{1-e\cos\theta}
$$

Persamaan ini disebut persamaan kepler. Jika nilai $e \le 1$, maka elips, Jika nilai $e = 1$, maka parabola. Jika nilai $e > 1$, maka hiperbola. Untuk mengumpulkan data posisi $(r, \theta)$ suatu benda langit, kemudian mengestimasi $p$ dan $e$ yang paling cocok dengan data.

| $\theta$ | $r$   |
| -------- | ----- |
| $\pi/4$  | $45$  |
| $\pi/3$  | $22$  |
| $2\pi/3$ | $6.5$ |
| $3\pi/4$ | $7$   |

$$
45 = \frac{p}{1-e\frac{\sqrt{2}}{2}} \iff p + e \frac{45\sqrt{2}}{2} = 45\\
22 = \frac{p}{1-e\frac{1}{2}} \iff p + 11\cdot e = 22\\
6.5 = \frac{p}{1-e\frac{-1}{2}} \iff p - e\cdot \frac{6.5}{2} = 6.5\\
7 = \frac{p}{1-e\frac{-\sqrt{2}}{2}} \iff p - e \frac{7\sqrt{2}}{2} = 7\\
$$

```octave
octave:3> A = [1, 45 * sqrt(2) / 2; 1, 11; 1, -6.5/2; 1, -7 * sqrt(2) / 2]
A =

    1.0000   31.8198
    1.0000   11.0000
    1.0000   -3.2500
    1.0000   -4.9497

octave:4> b = [45;22;6.5;7]
b =

   45.0000
   22.0000
    6.5000
    7.0000

octave:5> A \ b
ans =

   10.9474
    1.0604
     
octave:6> A' * A \ A' * b
ans =

   10.9474
    1.0604

octave:7> x = A' * A \ A' * b
x =

   10.9474
    1.0604

octave:8> A * x
ans =

   44.6884
   22.6116
    7.5012
    5.6988

octave:9> A * x - b
ans =

  -0.3116
   0.6116
   1.0012
  -1.3012

octave:10> norm(A * x - b, 2)
ans = 1.7795

octave:11> cond(A' * A)
ans = 393.57
```

$$
H = I - \frac{2}{v^\intercal v} v v^\intercal
$$

Kita pick $v = w \pm |w|_2 \begin{bmatrix}1\\0\\\vdots\\0\end{bmatrix}$

https://math.stackexchange.com/questions/835829/what-can-be-said-about-a-matrix-which-is-both-symmetric-and-orthogonal

https://www.math.uconn.edu/~leykekhman/courses/MATH3795/Lectures/Lecture_8_Linear_least_squares_orthogonal_matrices.pdf

https://www.youtube.com/watch?v=OqgYYqy0M4w

https://www.youtube.com/watch?v=d-yPM-bxREs

https://www.youtube.com/watch?v=6TIVIw4B5VA

https://www.youtube.com/watch?v=wmjUHak9yHU

https://www.youtube.com/watch?v=iMrgPGCWZ_o