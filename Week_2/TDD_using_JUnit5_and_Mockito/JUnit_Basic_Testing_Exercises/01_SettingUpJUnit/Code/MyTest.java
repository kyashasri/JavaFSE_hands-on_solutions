import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class MyTest {

    @Test
    public void testAddition() {
        System.out.println("Running test Addition");
        assertEquals(3, 2 + 1);
        System.out.println("testAddition passed!");
    }
}
