package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.TrabajadorDTO;
import service.TrabajadorService;

@WebServlet("/trabajador")
public class ServletTrabajador extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
		} else if (metodo.equals("activa")) {
			activa(request, response);
		} else if (metodo.equals("elimina")) {
			elimina(request, response);
		}
	}

	private void activa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cod = request.getParameter("cod");
		TrabajadorService ts = new TrabajadorService();
		ts.activaTrabajador(cod);
		lista(request, response);
	}

	private void elimina(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cod = request.getParameter("cod");
		TrabajadorService ts = new TrabajadorService();
		ts.eliminaTrabajador(cod);
		lista(request, response);
	}

	private void actualiza(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String codigo = request.getParameter("codigo");
		String nombre = request.getParameter("nombre");
		String apellidop = request.getParameter("apellidop");
		String apellidom = request.getParameter("apellidom");
		String dni = request.getParameter("dni");
		String email = request.getParameter("email");
		String telefono = request.getParameter("telefono");
		String departamento = request.getParameter("departamento");
		String provincia = request.getParameter("provincia");
		String distrito = request.getParameter("distrito");
		String direccion = request.getParameter("direccion");
		String user = request.getParameter("user");
		String password = request.getParameter("password");
		String tipo = request.getParameter("tipo");

		TrabajadorService ts = new TrabajadorService();
		TrabajadorDTO t = new TrabajadorDTO();
		t.setCod_trabajador(codigo);
		t.setNom_trabajador(nombre);
		t.setApep_trabajador(apellidop);
		t.setApem_trabajador(apellidom);
		t.setDni_trabajador(dni);
		t.setEmail_trabajador(email);
		t.setTelefono_trabajador(telefono);
		t.setDepartamento_trabajador(departamento);
		t.setProvincia_trabajador(provincia);
		t.setDistrito_trabajador(distrito);
		t.setDireccion_trabajador(direccion);
		t.setUser_trabajador(user);
		t.setPass_trabajador(password);
		t.setTipo_trabajador(tipo);

		int i = ts.actualizaTrabajador(t);
		if (i == 0) {
			response.sendRedirect("error.jsp");
		} else {
			response.sendRedirect("mtrabajador.jsp");
		}
	}

	private void busca(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TrabajadorService ts = new TrabajadorService();
		String cod = request.getParameter("cod");
		TrabajadorDTO t = ts.buscaTrabajador(cod);
		request.setAttribute("tra", t);
		request.getRequestDispatcher("atrabajador.jsp").forward(request, response);
	}

	private void desactiva(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cod = request.getParameter("cod");
		TrabajadorService ts = new TrabajadorService();
		ts.desactivaTrabajador(cod);
		lista(request, response);
	}

	private void registra(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nombre = request.getParameter("nombre");
		String apellidop = request.getParameter("apellidop");
		String apellidom = request.getParameter("apellidom");
		String dni = request.getParameter("dni");
		String email = request.getParameter("email");
		String telefono = request.getParameter("telefono");
		String departamento = request.getParameter("departamento");
		String provincia = request.getParameter("provincia");
		String distrito = request.getParameter("distrito");
		String direccion = request.getParameter("direccion");
		String user = request.getParameter("user");
		String password = request.getParameter("password");
		String tipo = request.getParameter("tipo");

		TrabajadorService ts = new TrabajadorService();
		TrabajadorDTO t = new TrabajadorDTO();

		t.setNom_trabajador(nombre);
		t.setApep_trabajador(apellidop);
		t.setApem_trabajador(apellidom);
		t.setDni_trabajador(dni);
		t.setEmail_trabajador(email);
		t.setTelefono_trabajador(telefono);
		t.setDepartamento_trabajador(departamento);
		t.setProvincia_trabajador(provincia);
		t.setDistrito_trabajador(distrito);
		t.setDireccion_trabajador(direccion);
		t.setUser_trabajador(user);
		t.setPass_trabajador(password);
		t.setTipo_trabajador(tipo);

		int i = ts.registraTrabajador(t);
		if (i == 0) {
			response.sendRedirect("error.jsp");
		} else {
			response.sendRedirect("mtrabajador.jsp");
		}
	}

	private void lista(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TrabajadorService ts = new TrabajadorService();
		ArrayList<TrabajadorDTO> lista = ts.listaTrabajador();
		request.setAttribute("data", lista);
		request.getRequestDispatcher("mtrabajador.jsp").forward(request, response);
	}

}
