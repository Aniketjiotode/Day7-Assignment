#!/bin/bash -x
echo "Repeated digits between 0 to 100"
for (( i=1; i<100; i++ ))
do
	a=$(($i%10))
	b=$(($i/10))
        if (( $a==$b ))
	then
		echo "$i"
	fi
done
