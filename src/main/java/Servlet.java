import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Servlet extends HttpServlet {//(inheritance)
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email=req.getParameter("email");
        String username=req.getParameter("username");
        String phone=req.getParameter("phone");
        String password=req.getParameter("password");
        User user=new User(email,username,phone,password);
        UserRegister dbrepo = new Database();
        dbrepo.addUser(user);


        resp.sendRedirect(req.getContextPath() + "/login.jsp");


}
}
