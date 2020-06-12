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
if ["$i"=="0"]; then # isn't recognized
  echo "hello"
fi

if [ "$i"=="0" ]; then # works
  echo "hello"
fi
```
