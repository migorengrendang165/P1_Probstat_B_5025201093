# P1_Probstat_B_5025201093
Praktikum 1 Probabilitas dan Statistik 8-10 April 2022

Hafizh Mufid Darussalam

5025201093

# Nomor 1
**Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
seseorang yang menghadiri acara vaksinasi sebelumnya.**
## a
**Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
(distribusi Geometrik)**

Penyelesaian:
```
> x = 3
> p = 0.20
> dgeom(x, p)
[1] 0.1024
```
Distribusi geometrik dapat dihitung dengan dgeom(x, p) di mana x = 3 dan p = 0,20. Hasilnya adalah 0,1024.
## b
**Mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )**

Penyelesaian:
```
> n = 10000
> set.seed(1)
> mean(rgeom(n, p) == 3)
[1] 0.0993
```
Distribusi geometri acak dapat dihitung dengan rgeom(n, p) di mana n = 10000 (banyak data) dan p = 0,20. Kemudian rata-rata (mean) dapat dihitung dengan mean(x) dengan x adalah yang ingin dicari rata-ratanya. Dalam hal ini, rgeom(n, p). Kemudian karena distribusi geometrik acak sudah diberikan nilai, yakni 3, meannya menjadi mean(rgeom(n, p) == 3). Hasilnya adalah 0,0993.
## c
**Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?**

Kesimpulannya adalah nilai rata-rata distribusi geometrik dengan 10000 data random dan distribusi geometri acak sebesar 3 lebih kecil 0,0031 dengan nilai distribusi geometriknya.
## d
**Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama**

Penyelesaian:
```
> set.seed(1)
> hist(rgeom(n, p), main = 'Histogram Distribusi Geometrik')
```

Histogram:

![ps1](https://user-images.githubusercontent.com/79137636/162612738-51315427-c89e-4c57-97c9-e9304078cf57.png)

## e
**Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.**

Penyelesaian:
```
> # e
> set.seed(1)
> mean(rgeom(n, p))
[1] 4.0752
> var(rgeom(n, p))
[1] 20.57776
```

Nilai rataannya (μ) sebesar 4.0752 dan variannya (σ²) sebesar 20.57776.

# Nomor 2
**Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan:**
```
> n = 20
> p = 0.20
```
## a
**Peluang terdapat 4 pasien yang sembuh.**

Penyelesaian:
```
> x = 4
> dbinom(x, n, p)
[1] 0.2181994
```
Dengan distribusi Binomial didapat peluangnya sebesar 0,2181994.
## b
**Gambarkan grafik histogram berdasarkan kasus tersebut.**

Penyelesaian:
```
> set.seed(1)
> hist(rbinom(x, n, p), main = 'Distribusi Binomial')
```

Histogram:

![ps2](https://user-images.githubusercontent.com/79137636/162613743-414880db-6e98-4544-91e6-2a389a3be691.png)

## c
**Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.**

Penyelesaian:
```
> set.seed(1)
> mean(rbinom(x, n, p))
[1] 4
> var(rbinom(x, n, p))
[1] 4.666667
```
Meannya sebesar 4 dan variancenya sebesar 4,666667.

# Nomor 3
**Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)**
```
> lambda = 4.5
```
## a
**Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?**

Penyelesaian:
```
> x = 6
> dpois(x, lambda)
[1] 0.1281201
```
Peluangnya sebesar 0,1281201.
## b
**Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama
setahun (n = 365)**

Penyelesaian:
```
> n = 365
> set.seed(1)
> hist(rpois(n, x), main = 'Distribusi Poisson')
```

Histogram:

![ps31 (2)](https://user-images.githubusercontent.com/79137636/162616565-96ee5e88-d571-42d5-9fd4-55e4c68657eb.png)

## c
**Bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan**

Dari histogram distribusi Poisson dengan λ = 4,5 dan λ = 6, di dapat kesimpulan bahwa nilai λ mempengaruhi sebaran data di mana nilai-nilai data akan berjumlah semakin banyak banyak ketika mendekati nilai λ dan semakin sedikit ketika menjauhi nilai λ.

![Frame 15](https://user-images.githubusercontent.com/79137636/162617036-f542c4a6-9769-482d-9b10-3ce48f135604.png)

## d
**Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.**

Penyelesaian:
```
> set.seed(1)
> mean(rpois(n, lambda))
[1] 4.479452
> var(rpois(n, lambda))
[1] 4.440042
```
Meannya sebesar 4,479452 dan variancenya sebesar 4,440042.

# Nomor 4
**Diketahui nilai x = 2 dan v = 10. Tentukan:**
```
> x = 2
> v = 10
```
## a
**Fungsi Probabilitas dari Distribusi Chi-Square.**

Fungsinya:

![ps41](https://user-images.githubusercontent.com/79137636/162614952-32c5138c-04d1-4231-8481-e4aa760aeabc.png)

dengan v adalah integer positif. Mean dan variancenya adalah:

μ = v and σ² = 2v
## b
**Histogram dari Distribusi Chi-Square dengan 100 data random.**

Penyelesaian:
```
> n = 100
> set.seed(1)
> hist(rchisq(n, v), main = 'Distribusi Chi-Square')
```

Histogram:

![ps4](https://user-images.githubusercontent.com/79137636/162613769-d62f7628-ae7e-4d02-b573-32fa716b3160.png)

## c
**Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.**

Penyelesaian:
```
> set.seed(1)
> mean(rchisq(n, v))
[1] 9.859639
> var(rchisq(n, v))
[1] 20.70051
```
Meannya sebesar 9,859639 dan variancenya sebesar 20,70051.
# Nomor 5
**Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan**
```
> x = 3
```
## a
**Fungsi Probabilitas dari Distribusi Exponensial**

Fungsinya adalah:

![ps5a](https://user-images.githubusercontent.com/79137636/162614876-5d99f954-135d-45b7-86f2-f4c9591eb205.png)

dengan β adalah parameter bernilai positif (> 0). Mean dan variancenya adalah:

μ = β and σ² = β²
## b
**Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random.**

Penyelesaian:
```
> set.seed(1)
> hist(rexp(10, x), main = 'Distribusi Eksponensial 10 Data')
> hist(rexp(100, x), main = 'Distribusi Eksponensial 100 Data')
> hist(rexp(1000, x), main = 'Distribusi Eksponensial 1000 Data')
> hist(rexp(10000, x), main = 'Distribusi Eksponensial 10000 Data')
```

Histogram untuk 10 data:

![ps51 (2)](https://user-images.githubusercontent.com/79137636/162614581-57da2319-d9f7-46c2-8de2-946218e0b2f7.png)

Histogram untuk 100 data:

![ps52](https://user-images.githubusercontent.com/79137636/162613784-97c025c8-0224-45b7-84a6-05fed1a696c6.png)

Histogram untuk 1000 data:

![ps53 (2)](https://user-images.githubusercontent.com/79137636/162614589-25dbbb23-4a97-43cc-86da-e03a2e548da9.png)

Histogram untuk 10000 data:

![ps54 (2)](https://user-images.githubusercontent.com/79137636/162614598-79276816-a3f5-48e4-8faf-a548452cb047.png)

## c
**Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3**

**Petunjuk:**

**● Gunakan set.seed(1)**

**● Gunakan fungsi bawaan R**

Penyelesaian:
```
> set.seed(1)
> mean(rexp(100, 3))
[1] 0.3435588
> var(rexp(100, 3))
[1] 0.06560765
```
Meannya sebesar 0,3435588 dan variancenya sebesar 0,06560765.
# Nomor 6
**Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan**
```
> n = 100
> mean = 50
> sd = 8
```
## a
**Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot
data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).**

**Keterangan :**

**X1 = Dibawah rata-rata**

**X2 = Diatas rata-rata**

**Contoh data :**

**1,2,4,2,6,3,10,11,5,3,6,8**

**rata-rata = 5.083333**

**X1 = 5**

**X2 = 6**

Penyelesaian:
```
> set.seed(1)
> rnorm(n, mean, sd)
  [1] 44.98837 51.46915 43.31497 62.76225 52.63606 43.43625 53.89943 55.90660 54.60625 47.55689 62.09425 53.11875 45.03008
 [14] 32.28240 58.99945 49.64053 49.87048 57.55069 56.56977 54.75121 57.35182 56.25709 50.59652 34.08519 54.95861 49.55097
 [27] 48.75364 38.23398 46.17480 53.34353 60.86944 49.17770 53.10137 49.56956 38.98352 46.68004 46.84568 49.52549 58.80020
 [40] 56.10541 48.68381 47.97311 55.57571 54.45331 44.48995 44.34004 52.91666 56.14826 49.10123 57.04886 53.18485 45.10379
 [53] 52.72896 40.96510 61.46419 65.84320 47.06223 41.64692 54.55776 48.91956 69.21294 49.68608 55.51791 50.22402 44.05381
 [66] 51.51034 35.56033 61.72444 51.22603 67.38089 53.80408 44.32043 54.88581 42.52722 39.97093 52.33157 46.45367 50.00884
 [79] 50.59473 45.28383 45.45065 48.91857 59.42470 37.81147 54.75157 52.66360 58.50480 47.56653 52.96015 52.13679 45.65984
 [92] 59.66294 59.28322 55.60171 62.69467 54.46789 39.78726 45.41388 40.20310 46.21279
> mean(rnorm(n, mean, sd))
[1] 49.69754
> x1 = 49
> x2 = 50
> z1 = (x1 - mean(rnorm(n, mean, sd)))/sd(rnorm(n, mean, sd))
> z1
[1] -0.155972
> z2 = (x2 - mean(rnorm(n, mean, sd)))/sd(rnorm(n, mean, sd))
> z2
[1] 0.04050407
> plot(rnorm(n, mean, sd), main = "Plot Data Generate Random")
```
Menghitung Z-score:

![image](https://user-images.githubusercontent.com/79137636/162615144-bca83844-7a09-49fe-8118-3a620cf611b0.png)

Dengan μ adalah mean and σ adalah standar deviasi.

Plot:

![ps61 (2)](https://user-images.githubusercontent.com/79137636/162613808-e1a13595-e99a-49ae-b645-d6e0a59cdb0d.png)

## b
**Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:**

**NRP_Nama_Probstat_{Nama Kelas}_DNhistogram**

**Contoh :**

**_312312312_Rola_Probstat_A_DNhistogram_**

Penyelesaian:
```
> set.seed(1)
> hist(rnorm(n, mean, sd), main = '5025201093_Hafizh Mufid Darussalam_Probstat_B_DNhistogram', breaks = 50)
```

Histogram:

![ps62 (2)](https://user-images.githubusercontent.com/79137636/162614613-719cc3ce-46b7-4be9-ad1b-ef0a367e56e5.png)

## c
**Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.**

Penyelesaian:
```
> set.seed(1)
> var(rnorm(n, mean, sd))
[1] 51.63277
```
Variancenya sebesar 51,63277.
