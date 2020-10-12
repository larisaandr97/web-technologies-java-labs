package example1;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        out.print("GET request => doGet was called");
        out.print("Username: " + req.getParameter("username") + " password: " + req.getParameter("password"));
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        PrintWriter out = resp.getWriter();
//        out.print("POST request => doPost was called");
//        out.print("Username: " + req.getParameter("username") + " password: " + req.getParameter("password"));

        User user = new User();
        req.setAttribute("user", req.getParameter("username"));
        if (user.hasValidPassword(req.getParameter("password"))) {
            req.getRequestDispatcher("/welcome.jsp").forward(req, resp);
        } else {
            req.setAttribute("errorMessage", "Invalid password!");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }

//        Defines an object that receives requests from the client and sends them to any resource (such as a servlet,
//                HTML file, or JSP file) on the server. The servlet container creates the RequestDispatcher object,
//                which is used as a wrapper around a server resource located at a particular path or given by a particular name.
    }
}
