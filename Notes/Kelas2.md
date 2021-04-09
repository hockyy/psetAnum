## Loss of Significance

Terjadi saat ada dua bilangan yang dikurangi yang dekat satu sama lain, sehingga bisa mengurangi angka penting atau significant figures. Misalnya

$1.2345678 - 1.2344444$, keduanya memiliki $8$ angka penting, saat dikurangi, hasilnya ialah $0.0001234$, yang hanya memiliki $4$ angka penting. Hal ini dapat mengurangi angka penting. 

Misalkan kita ingin mencari akar-akar dari persamaan kuadrat $x^2 - 40x + 2 = 0$ Kita akan menggunakan $4$ angka penting dalam perhitungan ini. Akar-akar persamaannya ialah:
$$
r_{1,2} = \frac{-b \pm \sqrt{b^2-4ac}}{2a}
$$
Didapatkan bahwa
$$
x_{1,2} = 20 \pm \sqrt{398} = 20.00 \pm 19.95
$$
Keduanya memiliki $4$ angka penting.
$$
x_1 \approx 20 + 19.95 = 39.95.
$$
Penjumlahan masih OK, karena memaintain angka pentingnya.
$$
x_2 \approx20-19.95 = 0.05.
$$
Not OK, karena hanya ada $1$ angka penting, kita kehilangan $3$ angka penting.

Kita rubah algoritmanya menjadi: $x_2 = \frac{c}{ax_1} = \frac{2}{39.95} \approx 0.05006$. Kita masih mendapatkan $4$ angka penting juga.

## Notasi

$$
x^*: \text{Solusi asli} \\
\hat{x}: \text{Solusi komputasi} \\
x_1, x_2, \dots, x_k: \text{Beberapa Solusi komputasi}
$$

## Matrix Norms

Referensi:

- https://learn.lboro.ac.uk/archive/olmp/olmp_resources/pages/workbooks_1_50_jan2008/Workbook30/30_4_mtrx_norms.pdf