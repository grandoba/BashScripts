# BashScripts
useful bash scripts



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
