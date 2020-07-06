# 8

# Parse data into a 10x10 grid.
  # go to ver12.sh for the next step
# ${y:0:6} : bash is 0 indexed, 첫번째 letter이 0th index, 그후는 몇개의 string을 남겨 놓을지. (여기서는 6 letters)

for file in *.pcd
do
  echo $file
  while read x y z Remaining
  do
    echo "$x $y $z $Remaining" >> "${x:0:5}-${y:0:6}-.pcd"
  done < $file
done

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

# VERSION 0.7
# FIELDS x y z intensity returnnumber numberofreturns scandirectionflag edgeofflightline classification scananglerank userdata pointsourceid gpstime red green blue
# SIZE 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8
# TYPE F F F F F F F F F F F F F F F F
# COUNT 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
# WIDTH 2126773
# HEIGHT 1
# VIEWPOINT 0.0 0.0 0.0 1.0 0.0 0.0 0.0
# POINTS 2126773
# DATA ascii
