# 12

# 1. for all Tracks, we divide each by a 10x10 grid. -> ver8.sh
# 2. delete data points that are with 2 meter from the floor. -> ver13.sh
# 3. Count the number of points in the 10x10 grid and put the correct PCD headers.
# Reference: https://unix.stackexchange.com/questions/401670/how-to-add-headers-to-columns

total=$(ls 3*.pcd | wc - l)
fileno=0

for file in 3*.pcd
do
  ((fileno++))
  # STEP 1: Find the number of lines in each 10x10 grid
  numlines=$(wc -l $file | awk '{print $1;}')
  # STEP 2: Insert header with correct format
  sed -i "1i VERSION 0.7\nFIELDS x y z intensity returnnumber numberofreturns scandirectionflag edgeofflightline classification scananglerank userdata pointsourceid gpstime red green blue\nSIZE 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4\nTYPE F F F F F F F F F F F F F F F F\nCOUNT 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1\nWIDTH $numlines\nHEIGHT 1\nVIEWPOINT 0.0 0.0 0.0 1.0 0.0 0.0 0.0\nPOINTS $numlines\nDATA ascii" $file
  echo "DONE: $fileno/$total"
done
