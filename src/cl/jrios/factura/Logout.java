package cl.jrios.factura;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class Logout extends HttpServlet{

	private static final long serialVersionUID = 5067850351508016085L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp){
		HttpSession sesion = req.getSession();
		
		try (
	            PrintWriter out = resp.getWriter();) {

	            out.println("<script type=\"text/javascript\">");
	            out.println("alert('Ha cerrado sesion correctamente');");
	            out.println("</script>");

	           
	            sesion.invalidate();
	            
	            resp.sendRedirect("index.jsp");

	        } catch (IOException e) {

	            e.printStackTrace();

	        }
	}

	
}
