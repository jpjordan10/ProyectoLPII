package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.TrabajadorDTO;
import service.TrabajadorService;

@WebServlet("/trabajador")
public class ServletTrabajador extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TrabajadorService ts = new TrabajadorService();

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
		} else if (metodo.equals("muestra")) {
			muestra(request, response);
		} else if (metodo.equals("sesion")) {
			iniciarSesion(request, response);
		} else if (metodo.equals("cerrarSesion")) {
			cerrarSesion(request, response);
		}
	}

	private void cerrarSesion(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession sesion = request.getSession();
		sesion.invalidate();
		request.setAttribute("msg", "Iniciar sesion");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	private void iniciarSesion(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user_trabajador = request.getParameter("username");
		String pass_trabajador = request.getParameter("password");

		TrabajadorDTO obj = ts.iniciarSesion(user_trabajador);
		if (obj != null) {
			if(obj.getEstado_trabajador().equals("ACTIVO")){
				if (obj.getPass_trabajador().equals(pass_trabajador) && obj.getTipo_trabajador().equals("GESTOR ARQUEOLOGO")) {
					HttpSession sesion = request.getSession();
					sesion.setAttribute("datos", obj);
					request.getRequestDispatcher("mgestor.jsp").forward(request, response);
				} else if (obj.getPass_trabajador().equals(pass_trabajador) && obj.getTipo_trabajador().equals("OBRERO")) {
					HttpSession sesion = request.getSession();
					sesion.setAttribute("datos", obj);
					request.getRequestDispatcher("mObrero.jsp").forward(request, response);
				} else if (obj.getPass_trabajador().equals(pass_trabajador) && obj.getTipo_trabajador().equals("ARQUEOLOGO")) {
					HttpSession sesion = request.getSession();
					sesion.setAttribute("datos", obj);
					request.getRequestDispatcher("marqueologo.jsp").forward(request, response);
				} else {
					request.setAttribute("msg", "Contraseña Incorrecta");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			}else{
				request.setAttribute("msg", "Usuario Inactivo");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}

		} else {
			request.setAttribute("msg", "El usuario no existe");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

	private void muestra(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TrabajadorService ts = new TrabajadorService();
		String cod = request.getParameter("cod");
		TrabajadorDTO t = ts.buscaTrabajador(cod);
		request.setAttribute("tra", t);
		request.getRequestDispatcher("vtrabajador.jsp").forward(request, response);
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
		String password = request.getParameter("password");

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
		t.setPass_trabajador(password);

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
		String password = request.getParameter("password");
		String tipo = request.getParameter("tipo");
		String fecha = request.getParameter("fecha");
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
		t.setPass_trabajador(password);
		t.setTipo_trabajador(tipo);
		t.setFecha_reg_trabajador(fecha);

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
