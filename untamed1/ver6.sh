# 5
for file in *.pcd
do
  num=0
  while read x y z intensity returnnumber numberofreturns scandirectionflag edgeofflightline classification scananglerank userdata pointsourceid gpstime red green blue
  do
    ((num++))
    if [ "$num" -gt "11" ]; then
      echo "$x $y $z $intensity $returnnumber $numberofreturns $scandirectionflag $edgeofflightline $classification $scananglerank $userdata $pointsourceid $gpstime $red $green $blue" >> "${x:0:4}--${y:0:5}--.pcd"
    fi
  done < $file
done

#
#
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
