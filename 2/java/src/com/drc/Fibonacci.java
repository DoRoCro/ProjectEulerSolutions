package com.drc;

import java.util.ArrayList;

public class Fibonacci {
    private ArrayList seriesValues;

    public Fibonacci(Long  seed1, Long seed2) {
        this.seriesValues = new ArrayList<Long>();
        this.seriesValues.add(seed1);
        this.seriesValues.add(seed2);
    }

    public Long term(Integer termNumber) throws IllegalArgumentException {
        if(termNumber<=2) {
            throw new IllegalArgumentException();
        }
        // extend arraylist out to required term if required
        for(int counter = Math.max(2, this.seriesValues.size());
            counter < termNumber;
            counter++) {
            this.seriesValues.add(((Long)this.seriesValues.get(counter - 2) + (Long)this.seriesValues.get(counter - 1)));
        }
        return (Long) this.seriesValues.get(termNumber-1);
    }

    public long sumOfEvens(Integer termNumber) {
        // populate arraylist out to required term
        this.term(termNumber);
        long sum = 0;
        // TODO should probably have a guard against re-use of object or not having filled ArrayList up to this value
        for (int i = 0; i< termNumber-1; i++){
            if ((Long)this.seriesValues.get(i) % 2 == 0) {
                sum += (Long) this.seriesValues.get(i);
            }
        }
        return sum;
    }
}
