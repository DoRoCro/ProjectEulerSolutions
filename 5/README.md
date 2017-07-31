# Problem 5 - What is the smallest number divisible by each of the numbers 1 to 20? #

## Ruby ##
First attempt uses a simple brute force approach incrementing integers which takes some time, but does deliver correct answer eventually (several minutes). Updated to use a more considered approach considering prime factors.

## Node.js ##
Uses similar boolean function to Ruby, but slightly different generate function.  This multiplies all the factors together, then tries to filter downwards for any redundant factors.  This may not be correct for all cases, but works for 10 and 20.