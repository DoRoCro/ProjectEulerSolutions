package com.drc;

/**
 * Created by douglas on 14/07/17.
 */
public class P1 {
    int number;
    public P1(int number) {
        this.number = number;
    }

    public int result() {
        int sum = 0;
        for(int i=1; i < this.number; i++){
            if(i % 3 == 0 || i % 5 == 0) {
                sum += i;
            }
        }
        return sum;
    }
}
