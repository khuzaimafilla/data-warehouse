Table of contents
- [Tugas 1](#TUGAS-1)
- [Tugas 2](#TUGAS-2)

## TUGAS 1
![tugas-1](./images/tugas1.png)

1. Kolom pada data tersebut berjumlah 7
2. Arti dari setiap kolom
    - customer : nama pelanggan
    - product : nama produk
    - region : wilayah penjualan
    - date : tanggal transaksi
    - item unit price : harga unit item
    - no items : jumlah unit yg dibeli
    - total sales : total penjualan
3. Ada
    - product : 3 kosong
    - region : 3 kosong
    - date : 2 kosong
4. Terdapat data yang kosong di kolom product, region, date maka dari itu terdapat inkonsistensi data (null)


## TUGAS 2
![tugas-2](./images/tugas2.png)

1. Data hasil eksekusi sesuai dengan data aslinya
2. Langkah-langkah yang dilakukan PDI untuk extracting data

![pdi-extracting-steps](./images/pdi-extracting-data-steps.png)

3. Penjelasan Log Pentaho Data Integration

    - **`I=20`** = **Baris input** (20 baris dibaca dari file CSV).
    - **`O=0`** = **Baris output** (tidak berlaku dalam kasus ini, jadi 0).
    - **`R=0`** = **Baris ditolak** (tidak ada baris yang ditolak).
    - **`W=19`** = **Baris ditulis** (19 baris berhasil ditulis ke langkah atau target berikutnya).
    - **`U=0`** = **Baris diperbarui** (tidak berlaku untuk langkah ini, jadi 0).
    - **`E=0`** = **Baris error** (tidak ada kesalahan yang terjadi).

4. Berikut table

| nama    | Waktu eksuski | procie                                 | ram  | storage        | vga                      | cpu                                    |
|---------|---------------|----------------------------------------|------|----------------|--------------------------|----------------------------------------|
| yonanda | 1 detik       | Intel Core i5-12450H (12 CPU), ~2.0GHz | 16GB | 512GB          | NVIDIA GeForce RTX 3050  | Intel Core i5-12450H (12 CPU), ~2.0GHz |
| Dahniar | 1 detik       | Intel(R) Core(TM) i5-6300U             | 8GB  | 256GB          | Intel(R) HD Graphics 520 | Intel(R) Core(TM) i5-6300U             |
| Aqila   | 1 detik       | AMD Ryzen 5600H                        | 8GB  | 512GB          | AMD Radeon(TM) Graphics  | AMD Ryzen 5600H                        |
| Hamdan  | 1 detik       | AMD Ryzen 5300U                        | 12GB | 500GB + 256 GB | AMD Radeon(TM) Graphics  | AMD Ryzen 5600H                        |
