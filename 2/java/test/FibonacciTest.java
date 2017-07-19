import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class FibonacciTest {
    Fibonacci myFib;

    @Before
    public void setUp() throws Exception {
        myFib = new Fibonacci(1,2);
    }

    @Test
    public void test3rdTermFor1And2Seeds () {
        assertEquals(3, myFib.term(3));
    }

}