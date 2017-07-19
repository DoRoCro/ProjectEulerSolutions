import com.drc.Fibonacci;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class FibonacciTest {
    Fibonacci myFib;

    @Before
    public void setUp() throws Exception {
        myFib = new Fibonacci(1l,2l);
    }

    @Test(expected = Exception.class)
    public void testArgumentForTermTooSmall () {
        myFib.term(1);
    }

    @Test
    public void test3rdTermFor1And2SeedsIs3 () {
        assertEquals((Long) 3l, myFib.term(3));
    }

    @Test
    public void test4thTermFor1And2SeedsIs5 () {
        assertEquals((Long) 5l, myFib.term(4));
    }

    @Test
    public void test10thTermFor1And2SeedsIs89 () {
        assertEquals((Long) 89l, myFib.term(10));
    }

    @Test
    public void testSumOfEvenTermsUpTo10thTermFor1And2SeedsIs44() {
        assertEquals( 44, myFib.sumOfEvens(10));
    }
    @Test
    public void testSumOfEvenTermsUpTo200thTermFor1And2SeedsIsLarge() {
        assertEquals( 8661519129473970634l, myFib.sumOfEvens(200));
    }


}