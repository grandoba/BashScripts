# 11

total=3688
fileno=0

for file in 3*.pcd
do

  # STEP 1: Where I am
  ((fileno++))
  echo "$fileno/$total..." >> "processed/log.txt"
  echo "$fileno/$total..."
  echo "$file..." >> "processed/log.txt"
  min=99.00

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
  done < $file

  # STEP 3: Print result
  echo $min >> "processed/log.txt"
  echo "_____" >> "processed/log.txt"

  # STEP 4: write to file
  while read x y z Remaining
  do
    if [ "${z:0:2}" -gt "$(("${min:0:2}" + 2))" ]; then
      echo "$x $y $z $Remaining" >> "processed/${x:0:5}-${y:0:6}-.pcd"
    else
      if [ "${z:0:2}" -eq "$(("${min:0:2}" + 2))" ]; then
        if [ "${z:3:2}" -gt "${min:3:2}" ]; then
          echo "$x $y $z $Remaining" >> "processed/${x:0:5}-${y:0:6}-.pcd"
        fi
      fi
    fi
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
