import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Hidden extends HttpServlet {

  protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
	//getting value submitted in form from HTML file
        String user = request.getParameter("user");
        
        //creating a new hidden form field
        out.println("<form action='HiddenOne'>");
        out.println("<input type='hidden' name='user' value='"+user+"'>");
        out.println("<input type='submit' value='submit' >");
        out.println("</form>");
    }
}