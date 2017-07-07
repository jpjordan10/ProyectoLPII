package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Reporte;
import beans.SolicitudDTO;
import service.SolicitudService;

@WebServlet("/soli")
public class ServletSolicitud extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SolicitudService sc = new SolicitudService();

	public ServletSolicitud() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String metodo = request.getParameter("metodo");
		if (metodo.equals("lista")) {
			lista(request, response);
		} else if (metodo.equals("genera")) {
			registra(request, response);
		} else if (metodo.equals("busca")) {
			busca(request, response);
		} else if (metodo.equals("actualiza")) {
			actualiza(request, response);
		} else if (metodo.equals("muestra")) {
			muestra(request, response);
		} else if (metodo.equals("listapendientes")) {
			listapendientes(request, response);
		} else if (metodo.equals("buscasolicitudpendiente")) {
			buscasolicitudpendiente(request, response);
		}
	}

	private void buscasolicitudpendiente(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nome = request.getParameter("nome");
		request.setAttribute("solicitudes", sc.buscarSolicitudPendiente(nome));
		request.getRequestDispatcher("busSolicitud.jsp").forward(request, response);
	}

	private void listapendientes(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		ArrayList<Reporte> lista = sc.listaSolicitudPendientes();
		session.setAttribute("lstpendientes", lista);
		request.getRequestDispatcher("bsolicitud.jsp").forward(request, response);
	}

	private void lista(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Reporte> lista = sc.listaSolicitud();
		request.setAttribute("data", lista);
		request.getRequestDispatcher("msolicitud.jsp").forward(request, response);
	}

	private void registra(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String permiso = request.getParameter("permiso");
		String estado = request.getParameter("estado");
		String fechar = request.getParameter("fechar");
		String fechaa = request.getParameter("fechaa");
		String cliente = request.getParameter("codcli");
		SolicitudDTO x = new SolicitudDTO();

		x.setPermisos_solicitud(permiso);
		x.setEstado_solicitud(estado);
		x.setFecha_reg_solicitud(fechar);
		x.setFecha_act_solicitud(fechaa);
		x.setCod_cliente(cliente);
		int i = sc.registrarSolicitud(x);
		if (i == 0) {
			response.sendRedirect("error.jsp");
		} else {
			response.sendRedirect("msolicitud.jsp");
		}
	}

	private void busca(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		Reporte r = sc.buscaSolicitud(num);
		request.setAttribute("sol", r);
		request.getRequestDispatcher("asolicitud.jsp").forward(request, response);
	}

	private void actualiza(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String num = request.getParameter("num");
		String fechaa = request.getParameter("fechaa");
		String permisos = request.getParameter("permisos");
		SolicitudDTO s = new SolicitudDTO();
		s.setNum_solicitud(num);
		s.setFecha_act_solicitud(fechaa);
		s.setPermisos_solicitud(permisos);
		int i = sc.concederPermisos(s);
		if (i == 0) {
			response.sendRedirect("error.jsp");
		} else {
			lista(request, response);
			// response.sendRedirect("msolicitud.jsp");
		}
	}

	private void muestra(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String num = request.getParameter("num");
		Reporte x = sc.buscaSolicitud(num);
		request.setAttribute("sol", x);
		request.getRequestDispatcher("vsolicitud.jsp").forward(request, response);
	}

}
