package com.drc.euler_P1;

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

    public int result(int mult1, int mult2) {
//    use some overloading to make tests similar
        int sum1 = sumOfMultiples(mult1);
        int sum2 = sumOfMultiples(mult2);
        int doubleCounts = sumOfMultiples((mult1 * mult2));
        return sum1 + sum2 - doubleCounts;
    }
    private int sumOfMultiples( int multiple) {
        // need to cope with case where multiple is exact divisor of number, where we want to be < number
        int maxMult = (this.number - 1 ) - (( this.number - 1 ) % multiple);
        return ( maxMult + multiple ) * ( maxMult / multiple ) / 2;
    }

}
