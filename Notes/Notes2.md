## LU Decomposition

Kita ingin melakukan dekomposisi matriks $A$ menjadi dua buah matriks $L$ (yang merupakan matriks segitiga bawah) dan $U$ (matriks segitiga atas) sehingga:
$$
A = LU\\
L = \begin{bmatrix}
1 & 0 & 0 &\dots & 0 \\
* & 1 & 0 &\dots & 0 \\
* & * & 1 &\dots & 0 \\
\vdots & \vdots & \vdots &\ddots & \vdots \\
* & * & * & \dots & 1
\end{bmatrix};
U = \begin{bmatrix}
* & * & * &\dots & * \\
0 & * & * &\dots & * \\
0 & 0 & * &\dots & * \\
\vdots & \vdots & \vdots &\ddots & \vdots \\
0 & 0 & 0 & \dots & *
\end{bmatrix}
$$
A akan diubah menjadi bentuk matriks baris eselon $U$, tanpa melakukan operasi tukar baris, $r_i \leftrightarrow r_j$.

Perhatikan pula bahwa matriks $L$ dan $U$ tidaklah unik.

Menggunakan operasi yang berkebalikan untuk mendapatkan U, maka kita dapat mendapatkan matriks L.
