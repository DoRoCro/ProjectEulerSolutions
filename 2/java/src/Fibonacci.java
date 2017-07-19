import java.util.ArrayList;

public class Fibonacci {
    private ArrayList seriesValues;

    public Fibonacci(Integer  seed1, Integer seed2) {
        this.seriesValues = new ArrayList<Integer>();
        this.seriesValues.add(seed1);
        this.seriesValues.add(seed2);
    }

    public Integer term(Integer termNumber) throws IllegalArgumentException {
        if(termNumber<=2) {
            throw new IllegalArgumentException();
        }
        for(int counter = 2; counter < termNumber; counter++){
            this.seriesValues.add((Integer)this.seriesValues.get(counter - 2) + (Integer)this.seriesValues.get(counter - 1));
        }
        return (Integer) this.seriesValues.get(termNumber-1);
    }
}
