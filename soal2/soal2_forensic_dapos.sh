#!/bin/bash

# soal no. 2
# a.) buat folder
mkdir forensic_log_website_daffainfo_log


# b.) cari rata-rata request serangan per jam
# n = jumlah baris-1 krn baris ke 1 info yg tidak diperlukan
awk 'BEGIN { n=NR-1 }

# membuat fungsi ceil untuk membulatkan jumlah request keatas (jika desimal)
function ceil(num) 
{ 
   return (num==int(num)) ? num : num+1;
}

{ n++ }

# 13 adalah hasil manual penghitungan range jam serangan (00 samppai 12)
END { printf "Rata-rata serangan adalah sebanyak %d requests per jam", ceil(n/13) }
' log_website_daffainfo.log >> forensic_log_website_daffainfo_log/ratarata.txt 


# c.) Mencari IP terbanyak yg mengakses server dan jumlah requestnya
#awk 'BEGIN { FS:":"; n=NR; }
#{ n++ }

#function findmod() {
#   modus=

 
#}
#'


# d.) mencari banyak request dengan user-agent: curl
awk '/curl/ { ++n }
END {print "Ada ", n, "requests yang menggunakan curl sebagai user-agent\n"}
' log_website_daffainfo.log >> forensic_log_website_daffainfo_log/result.txt


# e.) Mencari IP Address jam 2 pagi tgl 23
awk 'BEGIN { FS=":" }
/2022:02:**:**/ { print $1 }
' log_website_daffainfo.log >> forensic_log_website_daffainfo_log/result.txt


# Author: Achmad Ferdiansyah - 5025201245
