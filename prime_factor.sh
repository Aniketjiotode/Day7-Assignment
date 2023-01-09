#!/bin/bash -x

read -p "Enter the number: " n


echo "prime factor of $n is"
count=0
for (( i=2; $n>=$(( $i*$i )); i=$i ))
do
        if (( $(($n%$i))==0 ))
        then

		arr[((count++))]=$i
                n=$(( $n/$i ))
        else
                i=$(( $i+1 ))
        fi
done
	arr[((count++))]=$n
        echo "${arr[@]}"


