

# for loop to print all track names
# Run inside the directory you want to for loop through.
#
# for file in *.pcd
# do
#   echo "$file"
# done
num=0
for file in *.pcd
do
  num=0
  echo "$file"
  while read line
  do
    ((num++))
    # echo $num
    echo $line
    if [ "$num" -eq "11" ]; then
      break
    fi
  done < $file
done

# output shown below

# TrackZ_H_1.pcd
# 1
# VERSION 0.7
# 2
# FIELDS x y z intensity returnnumber numberofreturns scandirectionflag edgeofflightline classification scananglerank userdata pointsourceid gpstime red green blue
# 3
# SIZE 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8
# 4
# TYPE F F F F F F F F F F F F F F F F
# 5
# COUNT 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
# 6
# WIDTH 2212422
# 7
# HEIGHT 1
# 8
# VIEWPOINT 0.0 0.0 0.0 1.0 0.0 0.0 0.0
# 9
# POINTS 2212422
# 10
# DATA ascii
# 11
# 313434.88 4161109.75 58.99 19683.00 0.00 0.00 0.00 0.00 1.00 0.00 0.00 0.00 282271.19 19789.00 19789.00 19789.00
# TrackZ_I_0.pcd
# 1
# VERSION 0.7
# 2
# FIELDS x y z intensity returnnumber numberofreturns scandirectionflag edgeofflightline classification scananglerank userdata pointsourceid gpstime red green blue
# 3
# SIZE 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8
# 4
# TYPE F F F F F F F F F F F F F F F F
# 5
# COUNT 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
# 6
# WIDTH 16436644
# 7
# HEIGHT 1
# 8
# VIEWPOINT 0.0 0.0 0.0 1.0 0.0 0.0 0.0
# 9
# POINTS 16436644
# 10
# DATA ascii
# 11
# 313355.75 4161232.25 38.46 18049.00 0.00 0.00 0.00 0.00 1.00 0.00 0.00 0.00 282314.00 4112.00 6682.00 4369.00
