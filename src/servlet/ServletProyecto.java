package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.ProyectoDTO;
import beans.Reporte;
import service.ProyectoService;

@WebServlet("/proy")
public class ServletProyecto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProyectoService ps = new ProyectoService();

	public ServletProyecto() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String metodo = request.getParameter("metodo");
		if (metodo.equals("registra")) {
			registra(request, response);
		} else if (metodo.equals("lista")) {
			lista(request, response);
		} else if (metodo.equals("busca")) {
			busca(request, response);
		} else if (metodo.equals("muestra")) {
			muestra(request, response);
		} else if (metodo.equals("actualiza")) {
			actualiza(request, response);
		}
	}

	private void actualiza(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String num = request.getParameter("num");
		String fechaa = request.getParameter("fechaa");
		String etapa = request.getParameter("etapa");
		ProyectoDTO p = new ProyectoDTO();
		p.setNum_proyecto(num);
		p.setFecha_act_proyecto(fechaa);
		p.setEtapa_proyecto(etapa);
		int i = ps.actualizaProyecto(p);
		if (i == 0) {
			response.sendRedirect("error.jsp");
		} else {
			lista(request, response);
		}
	}

	private void muestra(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String num = request.getParameter("num");
		Reporte x = ps.buscaProyecto(num);
		request.setAttribute("pro", x);
		request.getRequestDispatcher("vproyecto.jsp").forward(request, response);
	}

	private void busca(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		Reporte x = ps.buscaProyecto(num);
		request.setAttribute("pro", x);
		request.getRequestDispatcher("aproyecto.jsp").forward(request, response);
	}

	private void lista(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Reporte> lista = ps.listaProyecto();
		request.setAttribute("data", lista);
		request.getRequestDispatcher("mproyecto.jsp").forward(request, response);
	}

	private void registra(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String fechar = request.getParameter("fechar");
		String fechaa = request.getParameter("fechaa");
		String departamento = request.getParameter("departamento");
		String provincia = request.getParameter("provincia");
		String distrito = request.getParameter("distrito");
		String direccion = request.getParameter("direccion");
		String tipo = request.getParameter("tipo");
		String etapa = request.getParameter("etapa");
		double costo = Double.parseDouble(request.getParameter("costo"));
		int meses = Integer.parseInt(request.getParameter("meses"));
		String numsoli = request.getParameter("numsoli");
		ProyectoDTO x = new ProyectoDTO();
		x.setFecha_reg_proyecto(fechar);
		x.setFecha_act_proyecto(fechaa);
		x.setDepartamento_proyecto(departamento);
		x.setProvincia_proyecto(provincia);
		x.setDistrito_proyecto(distrito);
		x.setDireccion_proyecto(direccion);
		x.setCod_tiptrabajo(tipo);
		x.setEtapa_proyecto(etapa);
		x.setCosto_proyecto(costo);
		x.setCan_mes_proyecto(meses);
		x.setNum_solicitud(numsoli);
		int rp = ps.registraProyecto(x);
		int as = ps.actualizarSolicitudAtendida(numsoli);
		if (rp == 0 && as == 0) {
			response.sendRedirect("error.jsp");
		} else {
			response.sendRedirect("mproyecto.jsp");
		}
	}

}
