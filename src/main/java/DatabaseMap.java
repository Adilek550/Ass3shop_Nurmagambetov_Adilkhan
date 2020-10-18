import java.util.HashMap;
import java.util.Map;

public class DatabaseMap {
    private static final Map<Long, ProductMap> products = new HashMap<>();

    public static Map<Long, ProductMap> getProduct() {
        return products;
    }

    public static Map<Long, ProductMap> getProductMap() {
        return null;
    }
}
