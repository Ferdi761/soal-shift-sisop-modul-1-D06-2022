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
sistem register dibuat lalu untuk mengecek berhasil didaftarkan dengan memanggil method cek_nama
if( cek_nama($name,$con) == 0 )
<br/>

<h3>
<strong>1 b.)</strong><a name = "1b"></a> membuat konfigurasi password agar keamanan terjaga dengan syarat:<br/>
i. Minimal 8 karakter <br/>
ii. Memiliki minimal 1 huruf kapital dan 1 huruf kecil <br/>
iii. Alphanumeric <br/>
iV. Tidak boleh sama dengan username
</h3>
<br/>

dibuat dengan codingan sebagai berikut:

   <p id = "letter" class = "invalid"> Huruf <b> kecil </b> </p>
   <p id = "capital" class = "invalid"> Huruf <b> KAPITAL (huruf besar) </b> </p>
   <p id = "number" class = "invalid"> <b>Angka</b>(0-9) </p>
   <p id = "length" class = "invalid"> Minimal <b> 8 karakter </b> </p>
    
    <script>
    var myInput = document.getElementById("psw");
    var letter = document.getElementById("letter");
    var capital = document.getElementById("capital");
    var number = document.getElementById("number");
    var length = document.getElementById("length");

<br/>

<h3>
<strong>1 c.)</strong><a name = "1c"></a> membuat sistem register pada script register.sh dan setiap user yang berhasil
didaftarkan disimpan di dalam file "./users/user.txt" dan juga membuat sistem login
yang dibuat di script "main.sh".
</h3>
<br/>
        cek apakah nilai yang diinputkan pada form ada yang kosong atau tidak
        if(!empty(trim($name)) && !empty(trim($username)) && !empty(trim($email)) && !empty(trim($password)) && !empty(trim($repass))){
            mengecek apakah password yang diinputkan sama dengan re-password yang diinputkan kembali
            if($password == $repass){
                memanggil method cek_nama untuk mengecek apakah user sudah terdaftar atau belum
                if( cek_nama($name,$con) == 0 ){
                    hashing password sebelum disimpan didatabase
                    $pass  = password_hash($password, PASSWORD_DEFAULT);
                    insert data ke database
                    $query = "INSERT INTO users (username,name,email, password ) VALUES ('$username','$nama','$email','$pass')";
                    $result   = mysql_query($con, $query);
                    jika insert data berhasil maka akan diredirect ke halaman index.php serta menyimpan data username ke session
                    if ($result) {
                        $_SESSION['username'] = $username;
                       
                        header('Location: index.php');
                    
                    
                    } else {
                        $error =  'User Already Exist';
                    }
                }else{
                        $error =  'Failed Login Attempt on User' '$name';
                }
            }else{
                $validate = 'Wrong Password';
            }
            
        }else {
            $error =  'Data cant be empty';
        }then{
            $validate = 'User $name registered successfully!';        }
    } 
<br/>

<h3>
<strong>1 d.)</strong><a name = "1d"></a> membuat sistem register pada script register.sh dan setiap user yang berhasil
didaftarkan disimpan di dalam file "./users/user.txt" dan juga membuat sistem login
yang dibuat di script "main.sh".
</h3>
<br/>
cek apakah nilai yang diinputkan pada form ada yang kosong atau tidak
        if(!empty(trim($name)) && !empty(trim($username)) && !empty(trim($email)) && !empty(trim($password)) && !empty(trim($repass))){
            mengecek apakah password yang diinputkan sama dengan re-password yang diinputkan kembali
            if($password == $repass){
                memanggil method cek_nama untuk mengecek apakah user sudah terdaftar atau belum
                if( cek_nama($name,$con) == 0 ){
                    hashing password sebelum disimpan didatabase
                    $pass  = password_hash($password, PASSWORD_DEFAULT);
                    insert data ke database
                    $query = "INSERT INTO users (username,name,email, password ) VALUES ('$username','$nama','$email','$pass')";
                    $result   = mysql_query($con, $query);
                    jika insert data berhasil maka akan diredirect ke halaman index.php serta menyimpan data username ke session
                    if ($result) {
                        $_SESSION['username'] = $username;
                       
                        header('Location: index.php');
                    
                    
                    } else {
                        $error =  'User Already Exist';
                    }
                }else{
                        $error =  'Failed Login Attempt on User' '$name';
                }
            }else{
                $validate = 'Wrong Password';
            }
            
        }else {
            $error =  'Data cant be empty';
        }then{
            $validate = 'User $name registered successfully!';        }
    } 
    
<br/>

<h3>
<strong>1 e.)</strong><a name = "1e"></a> membuat sistem register pada script register.sh dan setiap user yang berhasil
didaftarkan disimpan di dalam file "./users/user.txt" dan juga membuat sistem login
yang dibuat di script "main.sh".
</h3>
<br/>
cek apakah nilai yang diinputkan pada form ada yang kosong atau tidak

```
        if(!empty(trim($name)) && !empty(trim($username)) && !empty(trim($email)) && !empty(trim($password)) && !empty(trim($repass))){
            mengecek apakah password yang diinputkan sama dengan re-password yang diinputkan kembali
            if($password == $repass){
                memanggil method cek_nama untuk mengecek apakah user sudah terdaftar atau belum
                if( cek_nama($name,$con) == 0 ){
                    hashing password sebelum disimpan didatabase
                    $pass  = password_hash($password, PASSWORD_DEFAULT);
                    insert data ke database
                    $query = "INSERT INTO users (username,name,email, password ) VALUES ('$username','$nama','$email','$pass')";
                    $result   = mysql_query($con, $query);
                    jika insert data berhasil maka akan diredirect ke halaman index.php serta menyimpan data username ke session
                    if ($result) {
                        $_SESSION['username'] = $username;

                        header('Location: index.php');


                    } else {
                        $error =  'User Already Exist';
                    }
                }else{
                        $error =  'Failed Login Attempt on User' '$name';
                }
            }else{
                $validate = 'Wrong Password';
            }

        }else {
            $error =  'Data cant be empty';
        }then{
            $validate = 'User $name registered successfully!';        }
    }
```

<br/>

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

```
cat log_website_daffainfo.log | awk ' BEGIN {FS=":";}
{print $1}'| uniq -c | sort -nr |
awk 'NR==1' |
awk '{print "IP yang paling banyak mengakses server adalah: ", $2, "sebanyak ", $1, "requests\n"}
' >> forensic_log_website_daffainfo_log/result.txt
```

> 1.  menampilkan isi log
> 2.  membuat separator dan menampilkan IP address
> 3.  menampilkan count dari masing" IP address
> 4.  mengurutkan berdasarkan jumlah count secara descending
> 5.  mengambil baris pertama saja
> 6.  menampilkan IP address terbanyak melakukan request serta jumlah requestnya lalu simpan di "result.txt"
> 7.  gabungkan semua command menggunakan pipe

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

membuat program monitoring resource komputer, meliputi ram dan size dari suatu directory. Ada dua file yang ada disini, yaitu program monitoring resources yang akan dapat berjalan otomatis setiap menit lalu ada program agregasi monitoring resources yang akan dapat berjalan otomatis setiap jam.

- [3 a](#3a)
- [3 b](#3b)
- [3 c](#3c)
- [3 d](#3d)

<br/>
<h3>
<strong>3 a.)</strong><a name = "3a"></a> 
Menggunakan AWK untuk dapat membuat program monitoring resource komputer, meliputi ram dan size dari suatu directory.
</h3>
<br/>

```
now=$(date +"%Y%m%d%H%M%S")
#echo $now > metrics_$now.txt
output=`free -m | awk '/Mem:/ {print $2","$3","$4","$5","$6","$7}'`
output1=`free -m |awk '/:/{split($0,a," ");}END{print a[2]","a[3]","a[4]}'`
var2=`du -h`
var2=`echo "$var2"|awk '{split($0,a," ");}END{print a[1]}'`
echo $output","$output1","`pwd readlink -f test.sh`","$var2"," >> ~/log/metrics_$now.log

```

<br/>
<h3>
<strong>3 b.)</strong><a name = "3b"></a> 
Menggunakan crontab berisi cronjob untuk mencatat metrics diatas yang diharapkan dapat berjalan otomatis pada setiap menit.
</h3>
<br/>

```
* * * * * /{insert directory here}/minute_log.sh


chmod +x /{insert directory here}/minute_log.sh
```

<br/>
<h3>
<strong>3 c.)</strong><a name = "3c"></a> 
Menggunakan AWK untuk mengiterasi setiap baris yang ada pada file agregasi untuk mencari nilai maximum, minimum, dan average dari semua metric selama satu jam terakhir.
</h3>
<br/>

```
mkdir -p ~/log

dtDate=$(date --date="1 hour ago" +"%Y%m%d");
dtHour=$(date --date="1 hour ago" +"%H");
awk -F"," '
BEGIN{OFS=",";min1=99999;min2=99999;min3=99999;min4=99999;min5=99999;min6=99999;min7=99999;min8=99999;min9=99999;min11=99999}
$1 < min1 {min1=$1;}
$2 < min2 {min2=$2;}
$3 < min3 {min3=$3;}
$4 < min4 {min4=$4;}
$5 < min5 {min5=$5;}
$6 < min6 {min6=$6;}
$7 < min7 {min7=$7;}
$8 < min8 {min8=$8;}
$9 < min9 {min9=$9;}
$11 < min11 {min11=$11;}
END{print "minimum",min1,min2,min3,min4,min5,min6,min7,min8,min9,$10,min11}' ~/log/metrics_agg_$dtDate$dtHour.log > temp$dtDate$dtHour.log


awk -F"," '
BEGIN{OFS=",";max1=0;max2=0;max3=0;max4=0;max5=0;max6=0;max7=0;max8=0;max9=0;max11=0}
$1 > max1 {max1=$1}
$2 > max2 {max2=$2}
$3 > max3 {max3=$3}
$4 > max4 {max4=$4}
$5 > max5 {max5=$5}
$6 > max6 {max6=$6}
$7 > max7 {max7=$7}
$8 > max8 {max8=$8}
$9 > max9 {max9=$9}
$11 > max11 {max11=$11}
END{print "maximum",max1,max2,max3,max4,max5,max6,max7,max8,max9,$10,max11}' ~/log/metrics_agg_$dtDate$dtHour.log >> temp$dtDate$dtHour.log

awk -F"," 'BEGIN{OFS=",";sum1=0;sum2=0;sum3=0;sum4=0;sum5=0;sum6=0;sum7=0;sum8=0;sum9=0;sum11=0;}
{sum1+=$1;sum2+=$2;sum3+=$3;sum4+=$4;sum5+=$5;sum6+=$6;sum7+=$7;sum8+=$8;sum9+=$9;sum11+=$11}
END{sum1/=NR;sum2/=NR;sum3/=NR;sum4/=NR;sum5/=NR;sum6/=NR;sum7/=NR;sum8/=NR;sum9/=NR;sum11/=NR;print "average",sum1,sum2,sum3,sum4,sum5,sum6,sum7,sum8,sum9,$10,sum11}
' ~/log/metrics_agg_$dtDate$dtHour.log >> temp$dtDate$dtHour.log

chmod 700 ~/log/metrics_agg_$dtDate$dtHour.log
cat temp$dtDate$dtHour.log > ~/log/metrics_agg_$dtDate$dtHour.log
chmod 400 ~/log/metrics_agg_$dtDate$dtHour.log

rm temp$dtDate$dtHour.log

```

<br/>
<h3>
<strong>3 d.)</strong><a name = "3d"></a> 
Menggunakan command untuk mengubah hak akses menjadi hanya bisa dibaca oleh user pemilik file.
</h3>
<br/>

```
chmod 400 /direktori/nama_file.log
```

## ✍️ Authors

- Achmad Ferdiansyah 5025201245
- Nazhifah Elqolby 5025201156
- Ravin Pradhitya 5025201068
