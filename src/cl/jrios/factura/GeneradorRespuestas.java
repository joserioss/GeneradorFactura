package cl.jrios.factura;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GeneradorRespuestas")
public class GeneradorRespuestas extends HttpServlet {

	private static final long serialVersionUID = 1277066444033815114L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nombre;
		String empresa;
		String ciudad;
		String pais;
		String direccion;
		
		int plumas;
		int refri;
		int turbo;
		int valvulas;
		int frenos;
		
		int totalPlumas; 
		int totalRefri;
		int totalTurbo;
		int totalFrenos;
		int totalValvulas;
		
		nombre = req.getParameter("nombre");
		empresa = req.getParameter("empresa");
		ciudad = req.getParameter("ciudad");
		pais = req.getParameter("pais");
		direccion = req.getParameter("direccion");

		plumas = Integer.parseInt(req.getParameter("plumas"));
		refri = Integer.parseInt(req.getParameter("refri"));
		turbo = Integer.parseInt(req.getParameter("turbo"));
		frenos = Integer.parseInt(req.getParameter("frenos"));
		valvulas = Integer.parseInt(req.getParameter("valvulas"));
		
		totalPlumas = plumas * 10000;
		totalRefri = refri * 2300000;
		totalTurbo = turbo * 1700000;
		totalFrenos = frenos * 760000;
		totalValvulas = valvulas * 120000;
		
		req.setAttribute("nombre", nombre);
		req.setAttribute("empresa", empresa);
		req.setAttribute("ciudad", ciudad);
		req.setAttribute("pais", pais);
		req.setAttribute("direccion", direccion);
		req.setAttribute("plumas", plumas);
		req.setAttribute("refri", refri);
		req.setAttribute("turbo", turbo);
		req.setAttribute("frenos", frenos);
		req.setAttribute("valvulas", valvulas);
		req.setAttribute("totalPlumas", totalPlumas);
		req.setAttribute("totalRefri", totalRefri);
		req.setAttribute("totalTurbo", totalTurbo);
		req.setAttribute("totalFrenos", totalFrenos);
		req.setAttribute("totalValvulas", totalValvulas);
		req.getRequestDispatcher("facturaGenerada.jsp").forward(req, resp);;
	}

}
