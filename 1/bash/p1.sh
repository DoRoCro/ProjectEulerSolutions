#!/bin/bash
# I'm sure csh used to be easier than this
sum=0
for i in `seq 1 999`
do
    if [[ ( $[ $i % 3 ] == 0 ) || ( $[ $i % 5 ] == 0 ) ]]; then
        sum=$(($sum+$i))
    fi
done
echo "The answer is: $sum"