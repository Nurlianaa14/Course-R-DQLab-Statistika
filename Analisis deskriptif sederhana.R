#install.packages("pracma")
#library(readr)
library(pracma)

############################# Data understanding #################################################

#ID Pelanggan: Kode pelanggan yang sifatnya unik, tidak ada data lain dengan kode yang sama. Kode ini dalam bentuk yang sangat sederhana berupa angka integer (bilangan bulat).
#Nama: Nama pelanggan dalam bentuk teks
#Jenis Kelamin: Jenis kelamin dari pelanggan, dalam bentuk angka integer. Disini 1 mewakili laki-laki dan 2 mewakili perempuan.
#Pendapatan: Nilai pendapatan per bulan dari tiap pelanggan (??).
#Produk: Produk yang disurvei.
#Harga: Harga produk yang dibeli.
#Jumlah: Jumlah produk yang dibeli.
#Total: Total harga pembelian.
#Tingkat Kepuasan: Indeks tingkat kepuasan pelanggan tersebut terhadap produk yang dibeli.


############################# Data preparation ##################################################

#Data
data_intro <- read.csv("https://storage.googleapis.com/dqlab-dataset/data_intro.csv", sep=";")
data_intro

#Periksa tipe data
str(data_intro)

#Ubah tipe data kolom id pelanggan
data_intro$ID.Pelanggan <- as.character(data_intro$ID.Pelanggan)
str(data_intro$ID.Pelanggan)

#Ada beberapa kolom yang tergolong data kategorik
#Ubah menjadi as.factor
data_intro$Jenis.Kelamin <- as.factor(data_intro$Jenis.Kelamin)

data_intro$Produk <- as.factor(data_intro$Produk)

data_intro$Tingkat.Kepuasan <- as.factor(data_intro$Tingkat.Kepuasan)

str(data_intro$Jenis.Kelamin)
str(data_intro$Produk)
str(data_intro$Tingkat.Kepuasan)

########################### Analisis deskriptif (EDA) ########################################

#Modus produk (paling banyak terjual) dan modus tingkat kepuasan
Mode(data_intro$Produk)
Mode(data_intro$Tingkat.Kepuasan)

#Median
median(data_intro$Pendapatan)
median(data_intro$Harga) 
median(data_intro$Jumlah)
median(data_intro$Total) 

#Mean
mean(data_intro$Pendapatan)
mean(data_intro$Harga)
mean(data_intro$Jumlah)
mean(data_intro$Total)

#range untuk kolom Pendapatan
max(data_intro$Pendapatan) - min(data_intro$Pendapatan)

#varians untuk kolom Pendapatan
var(data_intro$Pendapatan)

#standar deviasi kolom pendapatan
#Standard deviasi dapat digunakan untuk melihat keakuratan dari hasil estimasi
#semakin kecil standard deviasi semakin akurat hasil estimasi
sd(data_intro$Pendapatan)

#analisis deskriptif
summary(data_intro)

#plot digunakan untuk variabel bertipe Factor 
#hist untuk variabel bertipe numerik seperti int

## Carilah sebaran data kolom Jenis.Kelamin dari variable data_intro
plot(data_intro$Jenis.Kelamin)

## Carilah sebaran data dari Pendapatan dari variable data_intro
hist(data_intro$Pendapatan)

## Carilah sebaran data dari Produk dari variable data_intro
plot(data_intro$Produk)

## Carilah sebaran data dari Harga dari variable data_intro
hist(data_intro$Harga)

## Carilah sebaran data dari Jumlah dari variable data_intro
hist(data_intro$Jumlah)

## Carilah sebaran data dari Total dari variable data_intro
hist(data_intro$Total)

## Carilah sebaran data dari Tingkat.Kepuasan dari variable data_intro
plot(data_intro$Tingkat.Kepuasan )


############################# Interpretasi ###################################################

"Profil Pelanggan sebagai berikut:

1.Sebagian besar pelanggan adalah berjenis kelamin perempuan.

2.Rata-rata pendapatan pelanggan dalam sebulan adalah 875000 
  (tidak menggunakan ukuran pemusatan mean, karena pada grafik terdapat outlier.
  Sehinggan ukuran pemusatan yang dipakai adalah median).

3.Pelanggan sering membeli produk dalam jumlah 3-4 buah.

4.Rata-rata total belanja yang sering dihabiskan adalah 710000.

5.Kebanyakan pelanggan sangat puas kepada produk yang dijual.
"

"Gambaran produk yang dijual sebagai berikut:

1.Produk yang sering dibeli adalah produk D.

2.Rata-rata harga produk yang terjual sebesar 197500.
"

################################ Hipotesis ###################################################

"Hipotesis yang dapat kita bangun berdasarkan data diatas adalah sebagai berikut:
  
1.Apakah ada hubungan pendapatan dengan total belanja?
 
2.Apakah ada pengaruh suatu produk dengan kepuasan pelanggan?

3.Apakah ada hubungan jenis kelamain dengan total belanja?
"

########################## Analisis Hipotesis ########################################################

##Hubungan pendapatan dengan total belanja

#Dengan scatter plot/analisis korelasi
#H0: tidak ada hubungan antara kedua variabel
#H1: ada hubungan antara kedua variabel

plot(data_intro$Pendapatan, data_intro$Total)
#Bds plot korelasi positif kuat, terima H1

#Dengan cor.test
#Ho: tidak ada hubungan antara pendapatan dan total belanja.
#Ha: terdapat hubungan antara pendapatan dan total belanja

cor.test(data_intro$Pendapatan, data_intro$Total)
#Karena p-value = 0.005957 < α = 0.05, maka keputusan: Tolak H0, Terima H1
#cor = 0.5920437 


##Hubungan produk dengan tingkat kepuasan

#Dengan chi square
#H0: tidak ada hubungan antara jenis produk dan tingkat kepuasan.
#H1: terdapat hubungan antara jenis produk dan tingkat kepuasan  

## Carilah tabulasi silang antara kolom jenis produk (Produk) dan 
## tingkat kepuasan (Tingkat.Kepuasan) dari variable data_intro
table(data_intro$Produk, data_intro$Tingkat.Kepuasan)

## Analisis bagaimana hubungan jenis produk dengan tingkat kepuasan mengunakan 
## uji korelasi
chisq.test(table(data_intro$Produk, data_intro$Tingkat.Kepuasan))
#Karena p-value = 0,4384 > α = 0,05, maka keputusan: Terima H0


#Hubungan jenis kelamin dan total belanja
#H0: tidak ada perbedaan rata-rata total belanja antara laki-laki dan perempuan
#H1: ada perbedaan rata-rata total belanja antara laki-laki dan perempuan

## carilah boxplot antara variabel jenis kelamin dengan total belanja
boxplot(Total~Jenis.Kelamin, data=data_intro)

## analisis bagaimana hubungan jenis kelamin dengan total belanja mengunakan uji statistik t-test
t.test(Total~Jenis.Kelamin, data=data_intro)
#Karena p-value = 0.2724 > α = 0,05, maka keputusan: Terima H0 

"Berdasarkan boxplot, terlihat bahwa median dan sebaran total belanja antara dua
kelompok jenis kelamin menunjukkan perbedaan, di mana kelompok 2 memiliki median 
lebih tinggi dan rentang belanja lebih lebar dibanding kelompok 1. Namun, berdasarkan 
hasil uji t (p-value = 0.2724), perbedaan tersebut tidak signifikan secara statistik. 
Dengan demikian, tidak terdapat bukti yang cukup untuk menyimpulkan bahwa jenis kelamin
berpengaruh terhadap total belanja"

