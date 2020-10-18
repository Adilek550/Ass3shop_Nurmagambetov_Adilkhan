import java.util.LinkedList;

public class Products {

    public static LinkedList<ProductsName> getAllBooks(){

        LinkedList<ProductsName> booksList = new LinkedList<>();

        booksList.add(new ProductsName(1,"img/cvety.jpg","Flowers for Algernon",150));
        booksList.add(new ProductsName(2,"img/tri.jpg", "Three Comprades", 150));
        booksList.add(new ProductsName(3,"img/otcy.jpg", "Fathers and sons", 400));

        return booksList;
    }

    public static LinkedList<ProductsName> getAllClothing() {

        LinkedList<ProductsName> clothingList = new LinkedList<>();

        clothingList.add(new ProductsName(1,"img/jeans.jpg","Jeans",101));
        clothingList.add(new ProductsName(2,"img/t-shirt.jpg","T-Shirt",11011));
        clothingList.add(new ProductsName(3,"img/sweatshirt.jpg","Sweatshirt",111001));
        return clothingList;
    }

    public static LinkedList<ProductsName> getAllLanguages() {
        LinkedList<ProductsName> languagesList = new LinkedList<>();
        languagesList.add(new ProductsName(1,"img/java.jpg","Java",101));
        languagesList.add(new ProductsName(2,"img/c++.jpg","C++",11011));
        languagesList.add(new ProductsName(3,"img/python.jpg","Python",111001));
        return languagesList;
    }

    public static LinkedList<ProductsName> getAllHome() {
        LinkedList<ProductsName> homeList = new LinkedList<>();
        homeList.add(new ProductsName(1,"img/home1.jpg","Home",10000001));
        homeList.add(new ProductsName(2,"img/home2.jpg","Best Home",1100000011));
        homeList.add(new ProductsName(3,"img/home3.jpg","Also Best Home",1100001001));
        return homeList;
    }

    public void find(String id) {
    }
}
