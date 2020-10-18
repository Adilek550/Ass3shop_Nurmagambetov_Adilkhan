import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String u = request.getParameter("username");
        String p = request.getParameter("password");
        User user = new User(u, p);
        UserRegister dbrepo = new Database();
        if (!dbrepo.login(user)) {
            PrintWriter out = response.getWriter();
            out.print("<p style=\"color:red\">Sorry username or password error</p>");
        } else {
            Cookie cookie = new Cookie(u, "Success");
            cookie.setMaxAge(60);
            response.addCookie(cookie);
            response.sendRedirect("index.jsp");
        }
    }
}