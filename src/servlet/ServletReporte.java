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
		if (metodo.equals("rxtipotrabajo")) {
			rxtipotrabajo(request, response);
		} else if (metodo.equals("ltipotrabajo")) {
			ltipotrabajo(request, response);
		} else if (metodo.equals("rxcliente")) {
			rxcliente(request, response);
		} else if (metodo.equals("lcliente")) {
			lcliente(request, response);
<<<<<<< HEAD
		} else if (metodo.equals("oparticipas")){
 		   obreroParticipas(request, response);
 	   } else if(metodo.equals("oparticipados")){
 		   obreroParticipados(request, response);
 	   }else if (metodo.equals("aparticipas")){
 		   arqueologoParticipas(request, response);
 	   } else if(metodo.equals("aparticipados")){
 		  arqueologoParticipados(request, response);
 	   }else if (metodo.equals("amparticipas")){
 		  arqueologomayorDireccion(request, response);
 	   } else if(metodo.equals("amparticipados")){
 		  arqueologomayorDirigidos(request, response);
 	   }
=======
		} else if (metodo.equals("Oparticipas")) {
			obreroParticipas(request, response);
		} else if (metodo.equals("Oparticipados")) {
			obreroParticipados(request, response);
		} else if (metodo.equals("rxfechas")) {
			rxfechas(request, response);
		} else if (metodo.equals("lfecha")) {
			lfecha(request, response);
		}

	}

	private void lfecha(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Reporte> lista = rs.reporteFechas();
		request.setAttribute("milistado", lista);
		request.getRequestDispatcher("rxfechas.jsp").forward(request, response);
	}
>>>>>>> 075f23b... antes

	private void rxfechas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fi = request.getParameter("fi");
		String ff = request.getParameter("ff");
		if (fi.equals("") || ff.equals("")) {
			lfecha(request, response);
		} else {
			ArrayList<Reporte> lista = rs.reportePorFechas(fi, ff);
			request.setAttribute("milistado", lista);
			request.getRequestDispatcher("rxfechas.jsp").forward(request, response);
		}
	}
<<<<<<< HEAD
	
	private void arqueologoParticipas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cod = request.getParameter("user");
		ArrayList<Reporte> listado = rs.listaParticipas(cod);
		request.setAttribute("participas", listado);
		request.getRequestDispatcher("pparticipas.jsp").forward(request, response);
		System.out.println(cod);
	}

	private void arqueologoParticipados(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cod = request.getParameter("user");
		ArrayList<Reporte> listado = rs.listaParticipado(cod);
		request.setAttribute("participados", listado);
		request.getRequestDispatcher("pparticipados.jsp").forward(request, response);
		System.out.println(cod);
	}

	private void arqueologomayorDireccion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cod = request.getParameter("user");
		ArrayList<Reporte> listado = rs.listaParticipas(cod);
		request.setAttribute("participas", listado);
		request.getRequestDispatcher("pdireccion.jsp").forward(request, response);
		System.out.println(cod);
	}

	private void arqueologomayorDirigidos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cod = request.getParameter("user");
		ArrayList<Reporte> listado = rs.listaParticipado(cod);
		request.setAttribute("participados", listado);
		request.getRequestDispatcher("pdirigidos.jsp").forward(request, response);
		System.out.println(cod);
	}

	private void obreroParticipados(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
=======

	private void obreroParticipados(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
>>>>>>> 075f23b... antes
		String cod = request.getParameter("user");
		ArrayList<Reporte> listado = rs.listaParticipado(cod);
		request.setAttribute("participados", listado);
		request.getRequestDispatcher("poparticipados.jsp").forward(request, response);
		System.out.println(cod);
	}

	private void obreroParticipas(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cod = request.getParameter("user");
		ArrayList<Reporte> listado = rs.listaParticipas(cod);
		request.setAttribute("participas", listado);
		request.getRequestDispatcher("poparticipas.jsp").forward(request, response);
		System.out.println(cod);
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
}
