# 📊 Summary of Learning: Exploratory Data Analysis & Hypothesis Testing with R

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
- **Metode:** Korelasi Pearson (`cor.test()`).
- **Hasil:**
  - Koefisien korelasi: **0.592** (positif dan cukup kuat).
  - p-value: **0.005957** (lebih kecil dari 0.05).
- **Kesimpulan:**  
  Terdapat **hubungan positif yang signifikan** antara pendapatan dan total belanja.

---

#### b) Hubungan Produk dengan Tingkat Kepuasan
- **Metode:** Chi-Square Test of Independence (`chisq.test()`).
- **Hasil:**
  - p-value: **0.4384** (lebih besar dari 0.05).
- **Kesimpulan:**  
  **Tidak terdapat hubungan yang signifikan** antara jenis produk dan tingkat kepuasan pelanggan.

---

#### c) Perbedaan Total Belanja Berdasarkan Jenis Kelamin
- **Metode:** Independent t-test (`t.test()`).
- **Hasil:**
  - p-value: **0.2724** (lebih besar dari 0.05).
  - Visualisasi boxplot menunjukkan perbedaan median, tetapi **tidak signifikan secara statistik**.
- **Kesimpulan:**  
  **Tidak terdapat perbedaan signifikan** rata-rata total belanja antara laki-laki dan perempuan.

---

## 📚 Insight yang Saya Dapatkan dari Project Ini

- Memahami konsep dasar **EDA (Exploratory Data Analysis)**.
- Mampu melakukan **data preparation** sesuai kebutuhan analisis.
- Mempelajari penggunaan berbagai **uji hipotesis statistik** sesuai tipe data:
  - **Pearson correlation** untuk hubungan antara dua variabel numerik.
  - **Chi-square test** untuk hubungan antar dua variabel kategorik.
  - **t-test** untuk perbedaan dua kelompok dalam variabel numerik.
- Mengasah kemampuan **menginterpretasi hasil uji statistik** (dengan melihat p-value dan signifikansi).
- Meningkatkan pemahaman terhadap **visualisasi data** menggunakan histogram, boxplot, dan scatter plot.

---

## 🚀 Tools dan Package yang Digunakan

- **R** (Base R)
- **Packages:** `pracma`, `readr`

---

## ✅ Kesimpulan Final Analisis Hubungan Antar Variabel

Berdasarkan hasil analisis yang telah dilakukan terhadap data **data_intro**, diperoleh kesimpulan sebagai berikut:

### Hubungan antara Pendapatan dengan Total Belanja:
Hasil uji korelasi Pearson menunjukkan bahwa terdapat **hubungan positif yang cukup kuat dan signifikan** antara pendapatan dan total belanja (nilai korelasi = 0,592, p-value = 0,005957 < 0,05).  
👉 **Artinya:** Semakin tinggi pendapatan, cenderung semakin tinggi total belanja.

### Hubungan antara Jenis Produk dengan Tingkat Kepuasan:
Berdasarkan hasil uji chi-square, diperoleh p-value sebesar **0,4384 (> 0,05)**, sehingga **gagal menolak H0**.  
👉 **Artinya:** **Tidak terdapat hubungan yang signifikan** antara jenis produk dan tingkat kepuasan pelanggan.

### Hubungan antara Jenis Kelamin dengan Total Belanja:
Melalui visualisasi boxplot, memang tampak adanya perbedaan median dan sebaran total belanja antara kelompok jenis kelamin. Namun, hasil uji t-test menunjukkan p-value sebesar **0,2724 (> 0,05)**, sehingga **gagal menolak H0**.  
👉 **Artinya:** **Tidak terdapat perbedaan yang signifikan** antara rata-rata total belanja laki-laki dan perempuan.

---

### 🔎 Kesimpulan Umum:
Dari ketiga analisis tersebut dapat disimpulkan bahwa:

✅ **Pendapatan memiliki hubungan signifikan dengan total belanja**  
❌ **Jenis produk tidak berhubungan signifikan dengan tingkat kepuasan**  
❌ **Jenis kelamin tidak berpengaruh signifikan terhadap total belanja**

---

