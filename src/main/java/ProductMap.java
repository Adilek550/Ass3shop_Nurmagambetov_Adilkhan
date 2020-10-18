public class ProductMap {
    private long id;
    private String name;
    private String category;
    private float price;

    public ProductMap()
    {

    }
    public ProductMap(long id,String name,String category,float price,long stock,String remarks){
        this.id=id;
        this.name=name;
        this.category=category;
        this.price=price;
    }

    public ProductMap(long l, String tv, String category, float v) {
    }


    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getCategory() {
        return category;
    }
    public void setCategory(String category) {
        this.category = category;
    }
    public float getPrice() {
        return price;
    }
    public void setPrice(float price) {
        this.price = price;
    }
}

