package Ecommerce;

import java.util.Arrays;
import java.util.Comparator;

public class Main {
    public static void main(String[] args) {
        // Unsorted array for linear search
        Product[] unsortedProducts = {
            new Product(101, "Phone", "Electronics"),
            new Product(104, "Watch", "Accessories"),
            new Product(102, "Jeans", "Clothing"),
             new Product(105, "Handbag", "Accessories"),
            new Product(103, "Laptop", "Electronics"),
           
        };

        // Sorted array for binary search (sorted by productId)
        Product[] sortedProducts = Arrays.copyOf(unsortedProducts, unsortedProducts.length);
        Arrays.sort(sortedProducts, Comparator.comparingInt(p -> p.productId));

        int targetId = 102;

        // Linear Search
        long st1 = System.nanoTime();
        Product ls = Search.linearSearch(unsortedProducts, targetId);
        long et1 = System.nanoTime();
        System.out.println("Linear Search Result: " + ls);
        System.out.println("Time Taken: " + (et1 - st1) + " nanosec\n");

        // Binary Search (on pre-sorted array)
        long st2 = System.nanoTime();
        Product bs = Search.binarySearch(sortedProducts, targetId);
        long et2 = System.nanoTime();
        System.out.println("Binary Search Result: " + bs);
        System.out.println("Time Taken: " + (et2 - st2) + " nanosec\n");

        // Comparison
        if ((et1 - st1) < (et2 - st2)) {
            System.out.println("Linear Search uses less time");
        } else {
            System.out.println("Binary Search uses less time");
        }
    }
}
