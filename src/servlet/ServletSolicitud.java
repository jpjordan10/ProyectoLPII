package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.SolicitudDTO;
import service.SolicitudService;

@WebServlet("/soli")
public class ServletSolicitud extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
		}
	}

	private void lista(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	private void registra(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String permiso = request.getParameter("permiso");
		String estado = request.getParameter("estado");
		String fechar = request.getParameter("fechar");
		String fechaa = request.getParameter("fechaa");
		String cliente = request.getParameter("codcli");

		SolicitudService cs = new SolicitudService();
		SolicitudDTO x = new SolicitudDTO();
		
		x.setPermisos_solicitud(permiso);
		x.setEstado_solicitud(estado);
		x.setFecha_reg_solicitud(fechar);
		x.setFecha_act_solicitud(fechaa);
		x.setCod_cliente(cliente);
		int i = cs.registrarSolicitud(x);
		if (i == 0) {
			response.sendRedirect("error.jsp");
		} else {
			response.sendRedirect("msolicitud.jsp");
		}
	}

	private void busca(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	private void actualiza(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	private void muestra(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
