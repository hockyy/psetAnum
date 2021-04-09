## Persamaan Non-Linear

Bagaimana cara mencari penyelesaian untuk $x^3 + x = 1000$? $x^x = 2$.

Tidak ada teknik analitis yang khusus untuk mencari persamaan non linear. Tapi ada metode numerik yang bisa digunakan. Karena sudah ada metode untuk mengerjakan ini. *Salah satunya wolfram alpha??? WKKWK*

### Nomor 3

Misalkan kita diberikan persamaan $x^x = 2$. Kita bisa merubahnya ke bentuk $f(x)$ sehingga bentuknya jadi $f(x) = 0$. Bagaimana dengan $f(x) = x-\frac{2}{x}$?

Tekniknya ialah kita dapat membaginya dengan $x$, mengakarkan kedua sisinya ataupun banyak cara lain.

Kita bisa tuliskan $f(x) = x^x - 2$. Perhatikan bahwa sign $f(1) = -1$ dan sign $f(2) = 4$ yang berbeda.Maka terdapat suatu nilai $c \in [1, 2]$ sehingga $f(x) = 0$.

Mari kita gunakan dengan metode bisection dan menjaga agar signnya berbeda.

| Iterasi | Lebar Interval | $a$   | $b$     | $m:=(a+b)/2$ | $f(a)$   | $f(b)$  | $f(m)$   |
| ------- | -------------- | ----- | ------- | ------------ | -------- | ------- | -------- |
| 1       | 1              | $1$   | $2$     | $1.5$        | $-1$     | $2$     | $-0.16$  |
| 2       | 0.5            | $1.5$ | $2$     | $1.75$       | $-0.16$  | $2$     | $2.60$   |
| 3       | 0.25           | $1.5$ | $1.75$  | $1.675$      | $-0.16$  | $2.66$  | $0.38$   |
| 4       | 0.125          | $1.5$ | $1.675$ | $1.5875$     | $-0.162$ | $0.372$ | $0.0827$ |

Kita perkecil intervalnya sehingga errornya bisa kecil. Perhatikan bahwa $\pm$ lebar interval / 2 ialah besar error kita.

Berapa iterasi yang diperlukan agar lebar intervalnya tidak lebih dari $0.0001$. Rumusnya kan berarti.
$$
\begin{aligned}
\frac{1}{2^{i-1}} &\leq 0.0001\\
10000 &\leq 2^{i-1}\\
i - 1 &\geq \log_2 (10000)\\
i - 1 &\geq \text{ceil}(13.28\dots)\\
i &\geq 15
\end{aligned}
$$
Jika ingin dia akurat hingga 4 digit di belakang koma, maka errornya mesti $\pm 0.0005$ 

### Metode Newton

$$
x_{k + 1} = x_k - \frac{f(x_k)}{f'(x_k)}
$$

Ingatt!!!!!!! Bahwa tidak ada terms $x$, adanya $x_k$.

Tuliskan $f(x) = x^2 - 2$ dan $f'(x) = 2x$.
$$
x_{k + 1} = x_k - \frac{x_k^2 - 2}{2x_k}
$$
Kita ambil $x_0 = 1.5$, $x_1 = 1.4167$, $x_2 = 1.4142$

Kita bisa coba saja hitung backward errornya terhadap $x^2 - 2$. 

```octave
>> x0 = 1.5
x0 = 1.5000
>> x1 = newton(x0)
x1 = 1.4167
x1 = 1.4167
>> x2 = newton(x1)
x1 = 1.4142
x2 = 1.4142
>> 1.4142^2-2
ans = -3.8360e-05
>> 1.4167^2-2
ans = 7.0389e-03

function [x1] = newton(x0)
  x1 = x0 - (x0^2 - 2)/(2 * x0)
endfunction
```

Bagaimana metode newton bekerja? Pada intinya dia membuat garis singgung di titik $x_k$ sekarang. Metode newton akan binary search gradiennya kurang lebih.

Misalkan kita mempunyai:
$f(x) = x^2-\cos(\pi x) - 1$

$f'(x) = 2x + \pi \sin(\pi x)$

atau kita bisa juga tuliskan:

$f(x) = -x^2 + \cos(\pi x) + 1$

$f'(x) = -2x -\pi \sin(\pi x_k)$