package com.tomerik;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;


public class MyTest {

    @Test
    public void what() {
        HelloWorld helloWorld  = new HelloWorld();
        double v = helloWorld.calculateRaise(2, 500000);
        PerssonService m = mock(PersonService.class);
        doReturn(200, when ( m.findExtras() ));

         assertEquals(v, 510000);

    }

}
