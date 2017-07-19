package com.drc;

public class Main {

    public static void main(String[] args) {
	// write your code here
        Fibonacci myFib = new Fibonacci((Long)1l,(Long)2l);
        System.out.println("The answer is: " + myFib.sumOfEvensNotExceedingValue((Integer)4000000));
        System.out.println("The sum of evens up to term 33 is: " + myFib.sumOfEvens((Integer)33));
    }
}
