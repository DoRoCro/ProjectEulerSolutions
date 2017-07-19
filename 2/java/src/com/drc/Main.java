package com.drc;

public class Main {

    public static void main(String[] args) {
	// write your code here
        Fibonacci myFib = new Fibonacci((Long)1l,(Long)2l);
        System.out.println("The answer is: " + myFib.sumOfEvens((Integer)400));
    }
}
