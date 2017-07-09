package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.ProyectoDTO;
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
		}
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
		}
		else{
			response.sendRedirect("mproyecto.jsp");
		}
	}

}
