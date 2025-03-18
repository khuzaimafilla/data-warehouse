## Analisis Dashboard Penjualan Cabang

### 1. Field yang Diperlukan
Untuk menampilkan penjualan di setiap cabang berdasarkan tahun, kita memerlukan field berikut:

| Field           | Keterangan                                      |
|----------------|----------------------------------------------|
| `branch_id`    | ID unik untuk cabang                         |
| `branch_name`  | Nama cabang                                  |
| `order_id`     | ID unik untuk transaksi                     |
| `order_date`   | Tanggal transaksi                           |
| `total_amount` | Jumlah omset dari transaksi                 |
| `year`         | Tahun transaksi (bisa diekstrak dari `order_date`) |

### 2. Query untuk Menampilkan Omset per Cabang per Tahun

```sql
SELECT
    b.branch_name,
    YEAR(o.order_date) AS tahun,
    SUM(o.total_amount) AS total_omset
FROM branches AS b
JOIN orders AS o ON b.branch_id = o.branch_id
GROUP BY b.branch_name, YEAR(o.order_date)
ORDER BY b.branch_name, tahun;
```

Query ini akan menghasilkan tabel dengan format berikut:

| Nama Cabang      | 2003  | 2004  | 2005  | ...  |
|-----------------|-------|-------|-------|------|
| Jakarta         | 100M  | 120M  | 130M  | ...  |
| Surabaya        | 90M   | 110M  | 125M  | ...  |
| Bandung         | 85M   | 95M   | 100M  | ...  |

Hasilnya bisa digunakan untuk membuat grafik penjualan berdasarkan tahun untuk setiap cabang.

Dengan query ini, Pak Huhut bisa melihat perkembangan omset LegendVehicle di tiap cabang dari tahun ke tahun secara visual dalam dashboard.
