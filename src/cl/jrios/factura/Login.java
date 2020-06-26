package cl.jrios.factura;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/login")
public class Login extends HttpServlet {

	private static final long serialVersionUID = 6318258943937733981L;

	private static final String LOGIN = "user";

	private static final String PASS = "admin";

	private static final Logger logger = Logger.getLogger(Login.class.getName());

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestLogin = "";
		String requestPass = "";

		PrintWriter writer = resp.getWriter();

		requestLogin = req.getParameter("login");
		requestPass = req.getParameter("pass");

		boolean usuarioOk = requestLogin.equals(LOGIN);
		boolean passwordOk = requestPass.equals(PASS);

		if (usuarioOk && passwordOk) {

			HttpSession sesionUsuario = req.getSession(true);
			sesionUsuario.setAttribute("NombreLogin", requestLogin);
			RequestDispatcher rd = req.getRequestDispatcher("ingresoValores.jsp");
			rd.forward(req, resp);

		} else if (usuarioOk && !passwordOk) {
			
			req.setAttribute("mostrarError1", new Boolean(true));
			req.getRequestDispatcher("index.jsp").forward(req, resp);
			
		} else if (!usuarioOk) {

			req.setAttribute("mostrarError2", new Boolean(true));
			req.getRequestDispatcher("index.jsp").forward(req, resp);

		}
	}

}
