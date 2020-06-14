z=19.29
min=20.39

if [ "${z:0:2}" -lt "${min:0:2}" ]; then # new Z is greater than min
	min=$z
	echo "first condition"
else
	echo "z is larger or equal to min"
	if [ "${z:0:2}" -eq "${min:0:2}" ]; then
		if [ "${z:3:2}" -lt "${min:3:2}" ]; then
			min=$z
			echo "second condition"
		fi
	fi
fi
