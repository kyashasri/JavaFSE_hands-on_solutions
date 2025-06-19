package SingletonPatternExample;

public class Main{
    public static void main(String[] args)
    {
        Logger l1=Logger.getInstance();
        l1.log("First log");

        Logger l2=Logger.getInstance();
        l2.log("Second log");

        if(l1==l2){
            System.out.println("Only one instance created");
        }
        else 
            System.out.println("Different instances created");
    }
}

