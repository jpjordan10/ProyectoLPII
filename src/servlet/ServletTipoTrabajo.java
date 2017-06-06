package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.TipoTrabajoDTO;
import service.TipoTrabajoService;

@WebServlet("/tt")
public class ServletTipoTrabajo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletTipoTrabajo() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String metodo = request.getParameter("metodo");
		if (metodo.equals("lista")) {
			lista(request, response);
		} else if (metodo.equals("registra")) {
			registra(request, response);
		} else if (metodo.equals("desactiva")) {
			desactiva(request, response);
		} else if (metodo.equals("busca")) {
			busca(request, response);
		} else if (metodo.equals("actualiza")) {
			actualiza(request, response);
		}
	}

	private void lista(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TipoTrabajoService ts = new TipoTrabajoService();
		ArrayList<TipoTrabajoDTO> lista = ts.listaTipoTrabajo();
		request.setAttribute("data", lista);
		request.getRequestDispatcher("mtiptra.jsp").forward(request, response);

	}

	private void registra(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String descripcion = request.getParameter("descripcion");
		TipoTrabajoService ts = new TipoTrabajoService();
		TipoTrabajoDTO t = new TipoTrabajoDTO();

		t.setDes_tiptrabajo(descripcion);

		int i = ts.registraTipoTrabajo(t);
		if (i == 0) {
			response.sendRedirect("error.jsp");
		} else {
			response.sendRedirect("mtiptra.jsp");
		}

	}

	private void desactiva(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cod = request.getParameter("cod");
		TipoTrabajoService ts = new TipoTrabajoService();
		ts.desactivaTipoTrabajo(cod);
		lista(request, response);

	}

	private void busca(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cod = request.getParameter("cod");
		TipoTrabajoService ts = new TipoTrabajoService();
		TipoTrabajoDTO t = ts.buscaTipoTrabajo(cod);
		request.setAttribute("tipt", t);
		request.getRequestDispatcher("/atiptra.jsp").forward(request, response);
	}

	private void actualiza(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

}
