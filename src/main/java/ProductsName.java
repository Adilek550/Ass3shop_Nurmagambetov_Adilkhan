public class ProductsName {

    private long id;
    private String img;
    private String name;
    private float price;

    public ProductsName() {
    }

    public ProductsName(int i, String img, String name, int price) {
    }

    public long getId() {
        return id;
    }

    public String getImg() {
        return img;
    }

    public String getName() {
        return name;
    }

    public float getPrice() {
        return price;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(float price) {
        this.price = price;
    }
}
