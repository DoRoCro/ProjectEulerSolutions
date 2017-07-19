import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class FibonacciTest {
    Fibonacci myFib;

    @Before
    public void setUp() throws Exception {
        myFib = new Fibonacci(1,2);
    }

    @Test(expected = Exception.class)
    public void testArgumentForTermTooSmall () {
        myFib.term(1);
    }

    @Test
    public void test3rdTermFor1And2SeedsIs3 () {
        assertEquals((Integer) 3, myFib.term(3));
    }

    @Test
    public void test4thTermFor1And2SeedsIs5 () {
        assertEquals((Integer) 5, myFib.term(4));
    }

    @Test
    public void test10thTermFor1And2SeedsIs89 () {
        assertEquals((Integer) 89, myFib.term(10));
    }

}