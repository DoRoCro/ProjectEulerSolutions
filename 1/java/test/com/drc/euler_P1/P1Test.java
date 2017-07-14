package com.drc.euler_P1;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Created by douglas on 14/07/17.
 */
public class P1Test {
    @Before
    public void setUp() throws Exception {
    }

    @Test
    public void resultFor10Gives23() throws Exception {
        P1 myP1 = new P1(10);
        assertEquals(23, myP1.result());
    }

    @Test
    public void resultFor1000() throws Exception {
        P1 myP1 = new P1(1000);
        assertEquals(233168, myP1.result());
    }

}