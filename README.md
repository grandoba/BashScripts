# BashScripts
useful bash scripts

## simple useful commands
```sh
pwd | xclip -sel clip
```
copy to clipboard
```sh
find <directory> -iname "*abcdef.*"
```
find file name in format "*abcdef.*" inside directory
```sh
```
sed usage \#1 : insert in first line with variables inside quoted string.
```sh
sed -i "1i VERSION 0.7\nFIELDS x y z intensity returnnumber numberofreturns scandirectionflag edgeofflightline classification scananglerank userdata pointsourceid gpstime red green blue\nSIZE 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4\nTYPE F F F F F F F F F F F F F F F F\nCOUNT 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1\nWIDTH $numlines\nHEIGHT 1\nVIEWPOINT 0.0 0.0 0.0 1.0 0.0 0.0 0.0\nPOINTS $numlines\nDATA ascii" $file
# REFERENCE: https://unix.stackexchange.com/questions/401670/how-to-add-headers-to-columns
```



## ROS related

## Git related
```sh
git pull #START YOUR WORK #get original file on GITLAB
git checkout master #make sure you are on the master branch

#Case1: Access new branch
git branch <NEW-BRANCH>
git checkout -b <name-of-branch> #make a new branch

#Case2: Access a previosly made branch
git checkout <PREVIOSULY-MADE-BRANCH>

# ...develop some code...
	# ...REPEAT
git add .

git commit –m "Some commit message"
	# ...REPEAT

# Merge to local master branch
git checkout master

git merge new-branch

git push #END YOUR WORK

```

## Things to be careful of
### No.1: Problem with number variable assignment

```sh
i = 0 # isn't recognized
i=0 # works
```

### No.2: Problem with if clause
```sh
i = 0
if ["$i" -eq "0"]; then # isn't recognized
  echo "hello"
fi

if [ "$i" -eq "0" ]; then # works
  echo "hello"
fi
```

[https://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/](https://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/)

[https://stackoverflow.com/questions/1362298/convert-floating-point-variable-to-integer](https://stackoverflow.com/questions/1362298/convert-floating-point-variable-to-integer)

### No.3: Double Quote & Single Quote in STRINGS
* variables can be used in double quotes.
* variables are not allowed in single quotes.
```sh
var=5
echo "var is $var"
echo 'var is $var'
```
