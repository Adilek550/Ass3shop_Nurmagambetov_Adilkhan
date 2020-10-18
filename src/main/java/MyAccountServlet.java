import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "MyAccountServlet")
public class MyAccountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        request.getRequestDispatcher("index.jsp").include(request, response);

        Cookie ck[]=request.getCookies();
        if(ck!=null){
            String name=ck[0].getValue();
            out.print("<b>Welcome to Profile</b>");
            out.print("<br>Welcome, "+name);
        }else{
            out.print("Please login first");
            request.getRequestDispatcher("login.jsp").include(request, response);
        }
        out.close();

    }
}
