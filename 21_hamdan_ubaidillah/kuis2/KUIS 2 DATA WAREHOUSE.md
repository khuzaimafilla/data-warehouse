# KUIS 2 DATA WAREHOUSE

**Dosen Pengampu:** Vipkas Al Hadid Firdaus, S.T., M.T.

---

**Nama:** Muhammad Hamdan Ubaidillah

**NIM:**  2341760190

---

### SOAL

**1. Import Data**

**Jawab:**

- Unggah dataset ke Google Sheets atau Google Drive, lalu hubungkan ke Looker Studio.

- **Link dataset:** [https://github.com/dik4rizky/datasources/blob/main/dataDummyKependudukan.csv](https://www.google.com/search?q=https://github.com/dik4rizky/datasources/blob/main/dataDummyKependudukan.csv)

- Pastikan tipe data untuk kolom-kolom sudah tepat (misal: teks untuk NIK dan Nama, tanggal untuk Tanggal Lahir)

- Disini tidak ada yang saya rubah, karena semua sudah sesuai.

**2. Visualisasi Jumlah Penduduk per Provinsi**

**Jawab:**

- Buat grafik batang (bar chart) yang menunjukkan jumlah penduduk di tiap provinsi.

- Atur grafik supaya provinsi dengan jumlah penduduk terbanyak muncul di bagian atas.

- Tambahkan filter dropdown untuk memilih provinsi dan jelaskan manfaatnya.
  
  - a. Memungkinkan pengguna untuk memilih provinsi tertentu (misalnya, hanya Jawa Tengah, Jawa Timur, atau Bali) tanpa harus melihat semua data sekaligus
  
  - b. Dengan dropdown, pengguna dapat memilih satu atau beberapa provinsi, sehingga grafik menjadi lebih bersih dan mudah dipahami
  
  - c. Pengguna seperti pembuat kebijakan atau peneliti dapat langsung melihat data provinsi tertentu yang relevan dengan kebutuhan mereka (misalnya, provinsi dengan jumlah penduduk terbanyak seperti Jawa Tengah dan Jawa Timur yang masing-masing memiliki 2 penduduk).

**3. Visualisasi Distribusi Jenis Kelamin**

**Jawab:**

- Buat diagram pie yang memperlihatkan proporsi penduduk laki-laki dan perempuan secara keseluruhan.

- Tambahkan keterangan singkat mengenai interpretasi diagram ini.

- Diagram pie menunjukkan distribusi jenis kelamin penduduk dengan proporsi yang seimbang, yaitu 50% Laki-laki dan 50% Perempuan. Hal ini mengindikasikan keseimbangan gender dalam dataset yang digunakan, yang dapat mencerminkan distribusi populasi yang merata antara kedua jenis kelamin. Informasi ini berguna untuk analisis demografis, seperti perencanaan kebutuhan layanan publik yang tidak memihak terhadap salah satu gender.

**4. Tabel Penduduk per Kecamatan**

**Jawab:**

- Buat tabel yang menampilkan jumlah penduduk di setiap kecamatan

- Gunakan fungsi agregasi untuk menghitung jumlah penduduk. Tabel menggunakan fungsi agregasi COUNT (dalam hal ini ditunjukkan sebagai "Record Count") untuk menghitung jumlah individu di setiap kecamatan. Dalam dataset dataDummyKependudukan.csv, setiap baris mewakili satu penduduk, sehingga fungsi COUNT diterapkan pada kolom seperti NIK atau secara default pada "Record Count" untuk mengelompokkan dan menjumlahkan penduduk per kecamatan.

- Jelaskan bagaimana tabel ini dapat membantu pemahaman data
  
  - a. Identifikasi Distribusi Spasial: Tabel menunjukkan daftar lengkap kecamatan (misalnya, Surabaya Setawan, Semarang Tengah, Medan Timur) dan jumlah penduduknya (masing-masing 1), memungkinkan pengguna memahami sebaran penduduk secara rinci di tingkat kecamatan.
  
  - b. Dukungan Pengambilan Keputusan: Dengan mengetahui jumlah penduduk per kecamatan, pemangku kepentingan (misalnya, pemerintah daerah) dapat mengidentifikasi wilayah yang mungkin memerlukan perhatian khusus, seperti alokasi sumber daya atau pembangunan infrastruktur.

**5. Peta Persebaran Penduduk**

**Jawab:**

- Buat peta geografis yang menunjukkan sebaran penduduk berdasarkan kabupaten/kota.

- Gunakan warna atau ukuran titik untuk mewakili jumlah penduduk tiap wilayah.

- Jelaskan bagaimana peta ini berguna untuk analisis spasial.
  
  - a. Visualisasi Distribusi Geografis: Peta ini menunjukkan lokasi geografis kabupaten/kota di Indonesia (seperti Jakarta, Bandung, Surabaya, hingga Jayapura) dengan titik-titik yang mewakili jumlah penduduk. Dalam dataset ini, setiap kabupaten/kota memiliki 1 penduduk (ditandai dengan lingkaran merah berukuran sama), sehingga peta memberikan gambaran sebaran penduduk secara merata di seluruh wilayah.
  
  - b. Perencanaan dan Pengambilan Keputusan: Dengan informasi spasial ini, pemerintah atau organisasi dapat merencanakan alokasi sumber daya, seperti pembangunan infrastruktur, layanan kesehatan, atau pendidikan, berdasarkan lokasi penduduk.
  
  - c. Analisis Kesenjangan Regional: Peta ini membantu mengidentifikasi kesenjangan antarwilayah. Dalam dataset ini, semua kabupaten/kota memiliki jumlah penduduk yang sama (1), tetapi jika dataset diperluas, peta dapat menunjukkan wilayah mana yang lebih padat atau kurang penduduk, sehingga memungkinkan analisis lebih lanjut tentang faktor penyebabnya (misalnya, urbanisasi atau aksesibilitas).

**6. Filtering Data**

**Jawab:**

- Tambahkan filter dropdown untuk kolom provinsi atau kabupaten/kota.

- Jelaskan bagaimana filter ini membantu pengguna dalam eksplorasi data.
  
  - a. Memungkinkan Fokus pada Data Spesifik: Filter dropdown memungkinkan pengguna memilih provinsi atau kabupaten/kota tertentu (misalnya, "DKI Jakarta" atau "Surabaya"), sehingga hanya data dari wilayah tersebut yang ditampilkan di visualisasi seperti peta
  
  - b. Mengurangi Kompleksitas Visual: Tanpa filter, visualisasi seperti peta menampilkan semua kabupaten/kota (20 titik dalam dataset ini), yang bisa terlihat crowded. Dengan dropdown, pengguna dapat memfilter (misalnya, hanya Jawa Timur), sehingga visualisasi lebih sederhana dan mudah dipahami.

**7. Tabel Data Individu**

**Jawab:**

- Buat tabel yang menampilkan kolom Nama, Alamat, dan Kelurahan untuk penduduk yang berjenis kelamin perempuan.

- Tambahkan filter agar pengguna dapat memilih kecamatan tertentu secara dinamis.

| No. | Nama             | Alamat            | Kelurahan         | Jenis Kelamin | Record Count |
|:--- |:---------------- |:----------------- |:----------------- |:------------- |:------------ |
| 1.  | Rini Setiawan    | Jl. Simpang B...  | Dinoyo            | Perempuan     | 1            |
| 2.  | Rina Sari        | Jl. Gatot Subr... | Dauh Puri Kauh    | Perempuan     | 1            |
| 3.  | Dian Pertiwi     | Jl. Pattimura...  | Baguala           | Perempuan     | 1            |
| 4.  | Lina Fitriani    | JL Wolter Mon...  | Mapanget          | Perempuan     | 1            |
| 5.  | Nia Dewi Lestari | Jl. Diponegoro... | Manokwari Barat   | Perempuan     | 1            |
| 6.  | Maya Wulandari   | Jl. Proklamasi... | Kota Jayapura     | Perempuan     | 1            |
| 7.  | Rina Agustina    | Jl. Imam Bonj...  | Ratu Samban       | Perempuan     | 1            |
| 8.  | Desi Purnama     | Jl. Demang Le...  | Alang-Alang Lebar | Perempuan     | 1            |
| 9.  | Maya Dewi        | Jl. Malioboro...  | Sosromenduran     | Perempuan     | 1            |
| 10. | Siti Rahayu      | Jl. Cendrawas...  | Cikutra           | Perempuan     | 1            |

> *Tabel berdasarkan data dari sumber gambar*

**8. Dashboard Overview**

**Jawab:**

- Buatlah dashboard sederhana yang menggabungkan visualisasi-visualisasi di atas (grafik batang, pie chart, tabel, peta, filter).

- Jelaskan tata letak dashboard yang Anda buat dan alasan pemilihan komponen
  
  - a. Posisi Komponen:
    
    - **Filter Dropdown:** Terletak di bagian paling atas (kiri dan tengah), meliputi Provinsi, Jenis Kelamin, dan Kecamatan. Filter ini ditempatkan di atas untuk memudahkan akses pengguna dalam menyesuaikan data yang ditampilkan.
    
    - **Grafik Batang (Distribusi Provinsi):** Diletakkan di bagian kiri atas, menunjukkan distribusi penduduk berdasarkan provinsi (misalnya, Jawa Timur dengan 1 penduduk dalam tampilan saat ini).
    
    - **Diagram Pie (Distribusi Jenis Kelamin Penduduk):** Ditempatkan di bagian kiri tengah, menampilkan proporsi jenis kelamin (100% Laki-laki dalam tampilan ini, kemungkinan karena filter yang diterapkan).
    
    - **Tabel (Daftar Penduduk Perempuan per Kecamatan):** Terletak di bagian kanan atas, menampilkan detail individu (Nama, Alamat, Kelurahan, Jenis Kelamin, Record Count) untuk penduduk perempuan atau sesuai filter yang dipilih.
    
    - **Tabel (Jumlah Penduduk per Kecamatan):** Diletakkan di bagian kanan tengah, menunjukkan jumlah penduduk per kecamatan (misalnya, Joko Susilo di Surabaya Pusat dengan 1 penduduk).
    
    - **Peta (Peta Persebaran Penduduk berdasarkan Kabupaten/Kota):** Ditempatkan di bagian bawah kanan, menampilkan distribusi geografis penduduk (misalnya, titik di Surabaya).
