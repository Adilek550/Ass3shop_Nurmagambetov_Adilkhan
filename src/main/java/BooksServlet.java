import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

@WebServlet(name = "BooksServlet")
public class BooksServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

            protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

                response.setContentType("text/html;charset=UTF-8");
                List<ProductsName> books = Products.getAllBooks();
                request.setAttribute("books", books);
                request.getRequestDispatcher("/books.jsp").forward(request, response);
    }
}
