# untamed1

## for loop through files


## Instructions
1. **ver8.sh:** For all Tracks, we divide each by a 10x10 grid.
```
cd $DirectoryThatHasPCDTracks
path/to/ver8.sh
```
2. **ver11.sh:** Then we delete data that are within 2 meters of the minimum z value
```
ls 3*.pcd | wc - l #variable number for $total in ver12.sh
cd $DirectoryThatHasPCDTracks
path/to/ver8.sh
```
3. **ver12.sh:** Count the number of points in the 10x10 grid and put the correct PCD headers.

### pcd header format.
* Raw
```sh
VERSION 0.7
FIELDS x y z intensity returnnumber numberofreturns scandirectionflag edgeofflightline classification scananglerank userdata pointsourceid gpstime red green blue
SIZE 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8
TYPE F F F F F F F F F F F F F F F F
COUNT 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
WIDTH 18416761
HEIGHT 1
VIEWPOINT 0.0 0.0 0.0 1.0 0.0 0.0 0.0
POINTS 18416761
DATA ascii
314520.31 4160349.00 34.19 10690.00 0.00 0.00 0.00 0.00 1.00 0.00 0.00 0.00 268803.50 37008.00 21588.00 12336.00
```
* Corrected
```sh
VERSION 0.7
FIELDS x y z intensity returnnumber numberofreturns scandirectionflag edgeofflightline classification scananglerank userdata pointsourceid gpstime red green blue
SIZE 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 #THIS PART IS CHANGED!
TYPE F F F F F F F F F F F F F F F F
COUNT 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
WIDTH 18416761
HEIGHT 1
VIEWPOINT 0.0 0.0 0.0 1.0 0.0 0.0 0.0
POINTS 18416761
DATA ascii
314520.31 4160349.00 34.19 10690.00 0.00 0.00 0.00 0.00 1.00 0.00 0.00 0.00 268803.50 37008.00 21588.00 12336.00
```

##
