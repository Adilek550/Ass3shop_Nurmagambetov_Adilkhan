import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ProductsNameMap {
    private Map<Long, ProductMap> products=DatabaseMap.getProductMap();
    private Object ProductMap;

    public ProductsNameMap()
    {
        products.put(1L, new ProductMap(1L,"Flowers for Algernon","Books",10000F));
        products.put(2L, new ProductMap(2L,"Java","Languages",20000F));
        products.put(3L, new ProductMap(3L,"Home","Home",15000F));
    }

    //Get All products
    public List<ProductMap> getAllProducts() {

        return new ArrayList<ProductMap>(products.values());
    }

    //Get product by product id
    public ProductMap getProduct(long pid) {

        return products.get(pid);
    }

    //To Add the products
    public ProductMap addProduct(ProductMap product) {
        product.setId(products.size()+1);
        products.put(product.getId(), product);
        return product;
    }

}
