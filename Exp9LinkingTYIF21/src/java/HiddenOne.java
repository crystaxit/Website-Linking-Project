import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HiddenOne extends HttpServlet {

  protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        //getting parameter from the hidden field
        String user = request.getParameter("user");
        out.println("Welcome "+user);
    }
}