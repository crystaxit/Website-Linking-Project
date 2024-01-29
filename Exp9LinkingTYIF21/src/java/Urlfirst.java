import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Urlfirst extends HttpServlet {

  protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("user");
        String pass = request.getParameter("pass");
        
        if(pass.equals("123"))
        {
            response.sendRedirect("Urlsecond?user_name="+name+"");
        }
    }   
}