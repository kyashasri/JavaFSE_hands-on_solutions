import org.junit.Test;
import static org.junit.Assert.*;

public class Assertions {

    @Test
    public void testAssertions() {
        System.out.println("Running assertEquals...");
        assertEquals(7, 2 + 5);
        System.out.println("assertEquals passed!");

        System.out.println("Running assertTrue...");
        assertTrue(7 > 2);
        System.out.println("assertTrue passed!");

        System.out.println("Running assertFalse...");
        assertFalse(7 < 2);
        System.out.println("assertFalse passed!");

        System.out.println("Running assertNull...");
        assertNull(null);
        System.out.println("assertNull passed!");

        System.out.println("Running assertNotNull...");
        assertNotNull(new Object());
        System.out.println("assertNotNull passed!");
    }
}
