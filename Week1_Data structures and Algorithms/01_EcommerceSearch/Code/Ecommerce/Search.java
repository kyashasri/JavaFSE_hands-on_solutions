package Ecommerce;

public class Search {

    public static Product linearSearch(Product[] prods, int targetId) {
        for (Product p : prods) {
            if (p.productId == targetId) {
                return p;
            }
        }
        return null;
    }

    public static Product binarySearch(Product[] prods, int targetId) {
        int low = 0;
        int high = prods.length - 1;

        while (low <= high) {
            int mid = (low + high) / 2;
            int res = prods[mid].productId;

            if (res < targetId)
                low = mid + 1;
            else if (res == targetId)
                return prods[mid];
            else
                high = mid - 1;
        }
        return null;
    }
}
