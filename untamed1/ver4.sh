# 5
file=Track_G_6.pcd


while read x y z intensity returnnumber numberofreturns scandirectionflag edgeofflightline classification scananglerank userdata pointsourceid gpstime red green blue
do
  if [ "${z:0:2}" -gt "40" ]; then
    echo "$x $y $z $intensity $returnnumber $numberofreturns $scandirectionflag $edgeofflightline $classification $scananglerank $userdata $pointsourceid $gpstime $red $green $blue"
  fi

  if [ "$num" -gt "100000" ]; then
    break
  fi
done < $file


# # 5
# for file in *.pcd
# do
#   num=0
#   # echo "$file"
#   while read x y z intensity returnnumber numberofreturns scandirectionflag edgeofflightline classification scananglerank userdata pointsourceid gpstime red green blue
#   do
#     ((num++))
#     if [ "$num" -lt "11" ]; then
#       continue
#     fi
#     n=$(($num%100000))
#     if [ "$n" -eq "0" ]; then
#       # echo $num
#       echo "$x $y $z"
#     fi
#     # echo $y
#     # echo $z
#     #
#     # echo $intensity
#     # echo $returnnumber
#     # echo $numberofreturns
#     # echo $scandirectionflag
#     # echo $edgeofflightline
#     # echo $classification
#     # echo $scananglerank
#     # echo $userdata
#     # echo $pointsourceid
#     # echo $gpstime
#     # echo $red
#     # echo $green
#     # echo $blue
#
#     # if [ "$num" -gt "35" ]; then
#     #   break
#     # fi
#
#   done < $file
# done


# VERSION 0.7
# FIELDS x y z intensity returnnumber numberofreturns scandirectionflag edgeofflightline classification scananglerank userdata pointsourceid gpstime red green blue
# SIZE 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8
# TYPE F F F F F F F F F F F F F F F F
# COUNT 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
# WIDTH 18416761
# HEIGHT 1
# VIEWPOINT 0.0 0.0 0.0 1.0 0.0 0.0 0.0
# POINTS 18416761
# DATA ascii
# 314520.31 4160349.00 34.19 10690.00 0.00 0.00 0.00 0.00 1.00 0.00 0.00 0.00 268803.50 37008.00 21588.00 12336.00
