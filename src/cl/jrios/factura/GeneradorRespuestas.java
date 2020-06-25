package cl.jrios.factura;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/generadorRespuestas")
public class GeneradorRespuestas extends HttpServlet {

	private static final long serialVersionUID = 1277066444033815114L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int precioPlumas = 10000;
		int precioRefri = 2300000;
		int precioTurbo = 1700000;
		int precioFrenos = 760000;
		int precioValvulas = 120000;

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

		int totalPlumas = plumas * precioPlumas;
		int totalRefri = refri * precioRefri; 
		int totalTurbo = turbo * precioTurbo; 
		int totalFrenos = frenos * precioFrenos;
		int totalValvulas = valvulas * precioValvulas;

		int valorNetoTotalI = totalValvulas + totalTurbo + totalFrenos + totalRefri + totalPlumas;
		int descuento = (int) (valorNetoTotalI * 0.1);
		int valorTotalI = valorNetoTotalI - descuento;

		String patron = "###,###";
		DecimalFormat decimalFormat = new DecimalFormat(patron);
		
		String valorNetoTotal = decimalFormat.format(valorNetoTotalI);
		String valorTotal = decimalFormat.format(valorTotalI);
		String totalPlumasFormateado = decimalFormat.format(totalPlumas);
		String totalRefriFormateado = decimalFormat.format(totalRefri);
		String totalTurboFormateado = decimalFormat.format(totalTurbo);
		String totalFrenosFormateado = decimalFormat.format(totalFrenos);
		String totalValvulasFormateado = decimalFormat.format(totalValvulas);
		
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
		
		req.setAttribute("totalPlumas", totalPlumasFormateado);
		req.setAttribute("totalRefri", totalRefriFormateado);
		req.setAttribute("totalTurbo", totalTurboFormateado);
		req.setAttribute("totalFrenos", totalFrenosFormateado);
		req.setAttribute("totalValvulas", totalValvulasFormateado);

		req.setAttribute("valorNetoTotal", valorNetoTotal);
		req.setAttribute("descuento", descuento);
		req.setAttribute("valorTotal", valorTotal);

		req.getRequestDispatcher("facturaGenerada.jsp").forward(req, resp);
		;
	}

}
