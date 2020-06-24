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

		String nombre = req.getParameter("nombre");
		String empresa = req.getParameter("empresa");
		String ciudad = req.getParameter("ciudad");
		String pais = req.getParameter("pais");
		String direccion = req.getParameter("direccion");

		int plumas = Integer.parseInt(req.getParameter("plumas"));
		int refri = Integer.parseInt(req.getParameter("refri"));
		int turbo = Integer.parseInt(req.getParameter("turbo"));
		int frenos = Integer.parseInt(req.getParameter("frenos"));
		int valvulas = Integer.parseInt(req.getParameter("valvulas"));

		int totalPlumas = plumas * 10000;
		int totalRefri = refri * 2300000;
		int totalTurbo = turbo * 1700000;
		int totalFrenos = frenos * 760000;
		int totalValvulas = valvulas * 120000;

		int valorNetoTotal = totalValvulas + totalTurbo + totalFrenos + totalRefri + totalPlumas;
		int descuento = (int) (valorNetoTotal * 0.1);
		int valorTotal = valorNetoTotal - descuento;

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

		req.setAttribute("valorNetoTotal", valorNetoTotal);
		req.setAttribute("descuento", descuento);
		req.setAttribute("valorTotal", valorTotal);

		req.getRequestDispatcher("facturaGenerada.jsp").forward(req, resp);
		;
	}

}
