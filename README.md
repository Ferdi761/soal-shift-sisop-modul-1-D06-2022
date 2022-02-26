<h1 align="center"> Penjelasan Jawaban Soal Shift 1
    <br> 
</h1>

## Daftar Soal

- [No. 1](#1)
- [No. 2](#2)
- [No. 3](#3)

## No. 1 <a name = "1"></a>

Han meminjamkan laptopnya ke temannya, tetapi Han ingin agar laptopnya tetap terjaga keamanannya. Usaha yang dilakukan Han agar dapat menjaga keamanan laptopnya yaitu membuat program sebagai berikut:

- [1 a](#1a)
- [1 b](#1b)
- [1 c](#1c)
- [1 d](#1d)
- [1 e](#1e)

<h3>
<strong>1 a.)</strong><a name = "1a"></a> membuat sistem register pada script register.sh dan setiap user yang berhasil
didaftarkan disimpan di dalam file "./users/user.txt" dan juga membuat sistem login
yang dibuat di script "main.sh".
</h3>
<br/>

<h3>
<strong>1 b.)</strong><a name = "1b"></a> membuat konfigurasi password agar keamanan terjaga dengan syarat:<br/>
i. Minimal 8 karakter <br/>
ii. Memiliki minimal 1 huruf kapital dan 1 huruf kecil <br/>
iii. Alphanumeric <br/>
iV. Tidak boleh sama dengan username
</h3>
<br/>

<h3>
<strong>1 c.)</strong><a name = "1c"></a> membuat sistem register pada script register.sh dan setiap user yang berhasil
didaftarkan disimpan di dalam file "./users/user.txt" dan juga membuat sistem login
yang dibuat di script "main.sh".
</h3>
<br/>

<h3>
<strong>1 d.)</strong><a name = "1d"></a> membuat sistem register pada script register.sh dan setiap user yang berhasil
didaftarkan disimpan di dalam file "./users/user.txt" dan juga membuat sistem login
yang dibuat di script "main.sh".
</h3>
<br/>

<h3>
<strong>1 e.)</strong><a name = "1e"></a> membuat sistem register pada script register.sh dan setiap user yang berhasil
didaftarkan disimpan di dalam file "./users/user.txt" dan juga membuat sistem login
yang dibuat di script "main.sh".
</h3>
<br/>

<h2>Jawaban no. 1</h2>
<p>
Menyertakan file program pada register lalu dilakukan inisialisasi session. Kemudian dicek apakah data username yang diinputkan user kosong atau tidak. setelah itu menghilangkan backshlases. cek apakah nilai yang diinputkan pada form ada yang kosong atau tidak. kemudian mengecek apakah password yang diinputkan sama dengan repassword yang diinputkan kembali. mengecek apakah user sudah terdaftar atau belum dengan memanggil method. hashing password sebelum disimpan di database. lalu insert data ke database.
</p>

## No. 2 <a name = "2"></a>

Buatlah sebuah script awk
bernama "soal2_forensic_dapos.sh" untuk melaksanakan tugas-tugas berikut :

- [2 a](#2a)
- [2 b](#2b)
- [2 c](#2c)
- [2 d](#2d)
- [2 e](#2e)

<h3>
<strong>2 a.)</strong><a name = "2a"></a> Membuat folder dengan nama "forensic_log_website_daffainfo_log".
</h3>
<br/>

Ketikkan perintah:

```
mkdir forensic_log_website_daffainfo_log
```

<br/>

<h3>
<strong>2 b.)</strong><a name = "2b"></a> Mencari rata-rata serangan request per jam dan simpan kedalam file "ratarata.txt".
</h3>
<br/>

Gunakan awk lalu ketikkan perintah:

```
awk 'BEGIN { n=NR-1 }

function ceil(num) {
  return (num==int(num)) ? num : num + 1;
}

{ n++ }

END { printf "Rata-rata serangan adalah sebanyak %d requests per jam", ceil(n/13) }

' log_website_daffainfo.log >> forensic_log_website_daffainfo_log/rata-rata.txt
```

> n adalah jumlah seluruh baris-1 baris paling atas, karena kita butuh baris ke-1
> <br/>
> '13' adalah rentang jam penyerangan menurut log (00 - 12)

<br/>

<h3>
<strong>2 c.)</strong><a name = "2c"></a> Mencari IP address terbanyak yang mengakses server beserta jumlah requestnya dan disimpan kedalam file "result.txt".
</h3>
<br/>

Konsep mungkin seperti mencari modus, yaitu dengan membandingkan string[n] dengan string[n+1], lalu jika sama maka var temp++ dan jika temp < temp2, maka temp2 = temp, lalu gunakan separator FS=":" untuk mengambil string per kata dan print $1 beserta banyaknya request krn IP address berada pada kata pertama.

<br/>
<h3>
<strong>2 d.)</strong><a name = "2d"></a> Mencari rata-rata serangan request per jam dan simpan kedalam file "result.txt".
</h3>
<br/>

Gunakan awk lalu ketik:

```
awk '/curl/ { ++n }
END { print "Ada ", n, "requests yang menggunakan curl sebagai user-agent" }
' log_website_daffainfo.log >> forensic_log_website_daffainfo_log/result.txt
```

> 'n' adalah variabel yang menampung baris yg mengandung kata "curl"

<br/>
<h3>
<strong>2 e.)</strong><a name = "2e"></a> Mencari IP address yang mengakses website pada jam 2 pagi dan simpan kedalam file "result.txt".
</h3>
<br/>

Gunakan awk lalu ketik:

```
awk 'BEGIN { FS = ":" }
/2022:02:**:**/ { print $1 }
' log_website_daffainfo.log >> forensic_log_website_daffainfo_log/result.txt
```

> FS adalah separator custom bertujuan membaca separator, disini memakai ':' sebagai pemecah antar kata.
> <br/>
> Untuk mendapatkan ip address yang menngakses di jam 2, menggunakan /2022:02:**:**/, '**:**' artinya meliputi semua menit dan detik pada jam 2 pagi.
> <br/>
> $1 artinya kata pertama atau args[1]

<br/>

## No. 3 <a name="3"></a>

## ✍️ Authors

- Achmad Ferdiansyah 5025201245
- Nazhifah Elqolby 5025201156
- Ravin Pradhitya 5025201068
