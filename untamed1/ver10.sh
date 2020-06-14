# 10-test

total=3688 #$(ls 3*.pcd | wc - l)
fileno=0

file="31416--416075--.pcd" #for testing
# it=0 #for testing
# STEP 1: Where I am
((fileno++))
echo "$fileno/$total..."
echo "$file..."
min=99
num=0

# STEP 2: find minima
while read x y z Remaining
do

  # search for smallest Z
  if [ "${z:0:2}" -lt "${min:0:2}" ]; then
    min=$z
  else
    if [ "${z:0:2}" -eq "${min:0:2}" ]; then
      if [ "${z:3:2}" -lt "${min:3:2}" ]; then
        min=$z
      fi
    fi
  fi

  ((num++))

  # stop finding minimum
  if [ "$num" -gt "50000" ]; then
    echo "stop searching after 50,000 iterations"
    break
  fi

done < $file

echo "this is the min"
echo $min

# STEP 3: write to file
while read x y z Remaining
do

  if [ "${z:0:2}" -gt "$(("${min:0:2}" + 1))" ]; then
    echo "$x $y $z $Remaining" >> "processed/${x:0:5}-${y:0:6}-.pcd"
  else
    if [ "${z:0:2}" -eq "$(("${min:0:2}" + 1))" ]; then
      if [ "${z:3:2}" -gt "${min:3:2}" ]; then
        echo "$x $y $z $Remaining" >> "processed/${x:0:5}-${y:0:6}-.pcd"
      fi
    fi
  fi

  #
  # # for testing
  # ((it++))
  # if [ "$it" -gt "10000" ]; then
  #   break
  # fi

done < $file

#
# for file in 3*.pcd
# do
#
#
# done


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
