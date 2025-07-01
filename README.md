# 📊 Summary of Learning: Statistics using R for Data Science

---

## 📌 Tahapan Analisis

### 1. Data Understanding dan Data Preparation

- Memahami struktur dan tipe data: numerik, kategorik, dan teks.
- Mengubah tipe data yang sesuai, seperti:
  - **ID pelanggan** diubah menjadi `character`.
  - **Jenis kelamin**, **Produk**, dan **Tingkat kepuasan** diubah menjadi `factor`.
- Mengecek struktur data dengan `str()` dan melakukan ringkasan awal dengan `summary()`.

---

### 2. Exploratory Data Analysis (EDA)

Beberapa langkah EDA yang dilakukan:

- Menghitung ukuran pemusatan data: **mean** dan **median**.
- Menghitung ukuran penyebaran data: **range**, **varians**, dan **standar deviasi**.
- Menentukan **modus** untuk variabel kategorik.
- Membuat visualisasi:
  - **Histogram** untuk variabel numerik seperti Pendapatan dan Total Belanja.
  - **Plot sebaran (plot())** untuk variabel kategorik seperti Jenis Kelamin dan Produk.

---

### 3. Hipotesis yang Diuji

Hipotesis yang dibangun berdasarkan data:

1. **Apakah ada hubungan antara Pendapatan dan Total Belanja?**
2. **Apakah ada hubungan antara Produk dan Tingkat Kepuasan?**
3. **Apakah ada perbedaan rata-rata Total Belanja berdasarkan Jenis Kelamin?**

---

### 4. Analisis dan Hasil Pengujian Hipotesis

#### a) Hubungan Pendapatan dengan Total Belanja

scatter plot hubungan dari  Pendapatan dengan Total Belanja

<img width="335" alt="48cfd0d9-96eb-4b67-b7c1-2360643bfcc3" src="https://github.com/user-attachments/assets/0dfc0f58-b838-4081-ba17-d46d4145f910" />


- **Hipotesis:**
  - **H0:** Tidak ada hubungan antara pendapatan dan total belanja.
  - **H1:** Ada hubungan antara pendapatan dan total belanja.

- **Metode:** Korelasi Pearson (`cor.test()`).

- **Hasil:**
  - **Koefisien korelasi:** 0,592 (positif dan cukup kuat).
  - **p-value:** 0,005957 (< 0,05).

- **Keputusan:** Tolak H0, Terima H1.

- **Kesimpulan:**  
  Terdapat **hubungan positif yang signifikan** antara pendapatan dan total belanja.

---

#### b) Hubungan Produk dengan Tingkat Kepuasan

- **Hipotesis:**
  - **H0:** Tidak ada hubungan antara jenis produk dan tingkat kepuasan pelanggan.
  - **H1:** Ada hubungan antara jenis produk dan tingkat kepuasan pelanggan.

- **Metode:** Uji Chi-Square (`chisq.test()`).

- **Hasil:**
  - **p-value:** 0,4384 (> 0,05).

- **Keputusan:** Terima H0.

- **Kesimpulan:**  
  **Tidak terdapat hubungan yang signifikan** antara jenis produk dan tingkat kepuasan pelanggan.

---

#### c) Hubungan Jenis Kelamin dengan Total Belanja

boxplot antara variabel jenis kelamin dengan total belanja (1:laki-laki, 2:perempuan)

<img width="335" alt="6420df09-31c6-4358-8002-bedd574832c0" src="https://github.com/user-attachments/assets/890cad4a-d417-4b9e-ae20-c09764145c5c" />


- **Hipotesis:**
  - **H0:** Tidak ada perbedaan rata-rata total belanja antara laki-laki dan perempuan.
  - **H1:** Ada perbedaan rata-rata total belanja antara laki-laki dan perempuan.

- **Metode:** Independent t-test (`t.test()`).

- **Hasil:**
  - **p-value:** 0,2724 (> 0,05).

- **Keputusan:** Terima H0.

- **Kesimpulan:**  
  **Tidak terdapat perbedaan yang signifikan** rata-rata total belanja antara laki-laki dan perempuan.  
  Meskipun dari visualisasi boxplot tampak perbedaan median, namun **hasil uji statistik menunjukkan perbedaan tersebut tidak signifikan secara statistik**.

---

## 🔎 Kesimpulan:
Dari ketiga analisis tersebut dapat disimpulkan bahwa:

✅ **Pendapatan memiliki hubungan signifikan dengan total belanja**  
❌ **Jenis produk tidak berhubungan signifikan dengan tingkat kepuasan**  
❌ **Jenis kelamin tidak berpengaruh signifikan terhadap total belanja**

---

## Rekomendasi:

  ✅ **Fokus segmentasi pada pelanggan dengan pendapatan lebih tinggi**
  
  ✅ **Perdalam riset kepuasan pelanggan**
  
  ✅ **Tidak perlu pemisahan strategi berdasarkan gender**
  
  ✅ **Lakukan analisis lanjutan dengan variabel tambahan**

---

## 🚀 Tools dan Package yang Digunakan

- **R** (Base R)
- **Packages:** `pracma`, `readr`

---

## 📚 Pemahaman dan skill yang Saya Dapatkan dari pembelajaran Ini

- Memahami konsep dasar **EDA (Exploratory Data Analysis)**.
- Mampu melakukan **data preparation** sesuai kebutuhan analisis.
- Mempelajari penggunaan berbagai **uji hipotesis statistik** sesuai tipe data:
  - **Pearson correlation** untuk hubungan antara dua variabel numerik.
  - **Chi-square test** untuk hubungan antar dua variabel kategorik.
  - **t-test** untuk perbedaan dua kelompok dalam variabel numerik.
- Mengasah kemampuan **menginterpretasi hasil uji statistik** (dengan melihat p-value dan signifikansi).
- Meningkatkan pemahaman terhadap **visualisasi data** menggunakan histogram, boxplot, dan scatter plot.

