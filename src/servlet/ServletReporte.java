package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Reporte;
import service.ReportesService;

/**
 * Servlet implementation class ServletPrueba
 */
@WebServlet("/reporte")
public class ServletReporte extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ReportesService rs = new ReportesService();

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String metodo = request.getParameter("metodo");
		if (metodo.equals("pDirigidos")) {
			listaDirigidos(request, response);
		} else if (metodo.equals("pDireccion")) {
			listaDireccion(request, response);
		} else if (metodo.equals("pParticipas")) {
			listaParticipas(request, response);
		} else if (metodo.equals("pParticipados")) {
			listaParticipados(request, response);
		} else if (metodo.equals("rxtipotrabajo")) {
			rxtipotrabajo(request, response);
		} else if (metodo.equals("ltipotrabajo")) {
			ltipotrabajo(request, response);
		} else if (metodo.equals("rxcliente")) {
			rxcliente(request, response);
		} else if (metodo.equals("lcliente")) {
			lcliente(request, response);
		}

	}

	private void lcliente(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<Reporte> lista = rs.reporteCliente();
		request.setAttribute("milistado", lista);
		request.getRequestDispatcher("rxcliente.jsp").forward(request, response);
	}

	private void rxcliente(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cod = request.getParameter("tipo");
		if (cod.equals("x")) {
			lcliente(request, response);
		} else {
			ArrayList<Reporte> lista = rs.reportePorCliente(cod);
			request.setAttribute("milistado", lista);
			request.getRequestDispatcher("rxcliente.jsp").forward(request, response);
		}
	}

	private void ltipotrabajo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<Reporte> lista = rs.reporteTipoTrabajo();
		request.setAttribute("milistado", lista);
		request.getRequestDispatcher("rxtipotrabajo.jsp").forward(request, response);
	}

	private void rxtipotrabajo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cod = request.getParameter("tipo");
		if (cod.equals("x")) {
			ltipotrabajo(request, response);
		} else {
			ArrayList<Reporte> lista = rs.reportePorTipoTrabajo(cod);
			request.setAttribute("milistado", lista);
			request.getRequestDispatcher("rxtipotrabajo.jsp").forward(request, response);
		}
	}

	private void listaDirigidos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cod = request.getParameter("user");
		ArrayList<Reporte> rep = rs.proyectosDirigidos(cod);
		request.setAttribute("Dirigidos", rep);
		request.getRequestDispatcher("pDirigidos.jsp").forward(request, response);
		System.out.println(cod);
	}

	private void listaDireccion(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cod = request.getParameter("user");
		ArrayList<Reporte> rep = rs.proyectosDireccion(cod);
		request.setAttribute("Direccion", rep);
		request.getRequestDispatcher("pDireccion.jsp").forward(request, response);
		System.out.println(cod);
	}

	private void listaParticipas(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cod = request.getParameter("user");
		ArrayList<Reporte> rep = rs.proyectosParticipas(cod);
		request.setAttribute("Participas", rep);
		request.getRequestDispatcher("pParticipas.jsp").forward(request, response);
		System.out.println(cod);
	}

	private void listaParticipados(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cod = request.getParameter("user");
		ArrayList<Reporte> rep = rs.proyectosParticipados(cod);
		request.setAttribute("Participados", rep);
		request.getRequestDispatcher("pParticipados.jsp").forward(request, response);
		System.out.println(cod);
	}
}
