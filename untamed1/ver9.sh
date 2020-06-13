# 9

for file in 3*.pcd
do
  FILESIZE=$(stat -c%s "$file")
  echo "$file $FILESIZE" >> stats.csv
  # if [ "${file:0:1}" -lt "0" ]; then
    # fields=($(printf "%s" "$file"|cut -d'--' --output-delimiter=' ' -f1-))
    # echo "${fields[0]} ${fields[1]}">> stats.csv
  # fi
done
# for file in *.pcd
# do
#   if [ "${file:0:1}" -lt "0" ]; then
#     fields=($(printf "%s" "$file"|cut -d'--' --output-delimiter=' ' -f1-))
#     echo "${fields[0]} ${fields[1]}">> stats.csv
#   fi
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
