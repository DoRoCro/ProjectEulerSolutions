package com.drc.euler_P1;

public class Main {

    public static void main(String[] args) {
        P1 myP1 = new P1(1000);
        System.out.println("Problem 1 brute force answer is: " + myP1.result());
        System.out.println("Problem 1 formula answer is: " + myP1.result(3,5));
    }
}
