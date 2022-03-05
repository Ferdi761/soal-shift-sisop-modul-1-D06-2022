now=$(date +"%Y%m%d%H%M%S")
#echo $now > metrics_$now.txt
output=`free -m | awk '/Mem:/ {print $2","$3","$4","$5","$6","$7}'`
output1=`free -m |awk '/:/{split($0,a," ");}END{print a[2]","a[3]","a[4]}'`
var2=`du -h`
var2=`echo "$var2"|awk '{split($0,a," ");}END{print a[1]}'`
echo $output","$output1","`pwd readlink -f test.sh`","$var2"," >> ~/log/metrics_$now.log
