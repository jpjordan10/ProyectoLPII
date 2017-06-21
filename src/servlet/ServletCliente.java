package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.ClienteDTO;
import service.ClienteService;

@WebServlet("/cliente")
public class ServletCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletCliente() {
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
		} else if (metodo.equals("activa")) {
			activa(request, response);
		} else if (metodo.equals("elimina")) {
			elimina(request, response);
		} else if (metodo.equals("muestra")) {
			muestra(request, response);
		}else if (metodo.equals("listaclientemodal")) {
			listaclientemodal(request, response);
		}
		
	}

	private void listaclientemodal(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClienteService ts = new ClienteService();
		ArrayList<ClienteDTO> lista = ts.listaCliente();
		request.setAttribute("data", lista);
		request.getRequestDispatcher("gsolicitud.jsp#buscarCliente").forward(request, response);
	}

	private void muestra(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ClienteService cs = new ClienteService();
		String cod = request.getParameter("cod");
		ClienteDTO c = cs.buscaCliente(cod);
		request.setAttribute("cli", c);
		request.getRequestDispatcher("vcliente.jsp").forward(request, response);
	}

	private void activa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cod = request.getParameter("cod");
		ClienteService ts = new ClienteService();
		ts.activaCliente(cod);
		lista(request, response);
	}

	private void elimina(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cod = request.getParameter("cod");
		ClienteService ts = new ClienteService();
		ts.eliminaCliente(cod);
		lista(request, response);
	}

	private void lista(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClienteService ts = new ClienteService();
		ArrayList<ClienteDTO> lista = ts.listaCliente();
		request.setAttribute("data", lista);
		request.getRequestDispatcher("mcliente.jsp").forward(request, response);

	}

	private void registra(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String razon = request.getParameter("razon");
		String ruc = request.getParameter("ruc");
		String email = request.getParameter("email");
		String telefono = request.getParameter("telefono");
		String departamento = request.getParameter("departamento");
		String provincia = request.getParameter("provincia");
		String distrito = request.getParameter("distrito");
		String direccion = request.getParameter("direccion");
		String tipo = request.getParameter("tipo");
		String fecha = request.getParameter("fecha");
		String representante = request.getParameter("representante");

		ClienteService cs = new ClienteService();
		ClienteDTO c = new ClienteDTO();

		c.setRazsoc_cliente(razon);
		c.setRuc_cliente(ruc);
		c.setEmail_cliente(email);
		c.setTelefono_cliente(telefono);
		c.setDepartamento_cliente(departamento);
		c.setProvincia_cliente(provincia);
		c.setDistrito_cliente(distrito);
		c.setDireccion_cliente(direccion);
		c.setTipo_cliente(tipo);
		c.setRepresentante_cliente(representante);
		c.setFecha_reg_cliente(fecha);

		int i = cs.registraCliente(c);
		if (i == 0) {
			response.sendRedirect("error.jsp");
		} else {
			response.sendRedirect("mcliente.jsp");
		}
	}

	private void desactiva(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cod = request.getParameter("cod");
		ClienteService ts = new ClienteService();
		ts.desactivaCliente(cod);
		lista(request, response);

	}

	private void busca(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClienteService cs = new ClienteService();
		String cod = request.getParameter("cod");
		ClienteDTO c = cs.buscaCliente(cod);
		request.setAttribute("cli", c);
		request.getRequestDispatcher("acliente.jsp").forward(request, response);
	}

	private void actualiza(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String codigo = request.getParameter("codigo");
		String razon = request.getParameter("razon");
		String ruc = request.getParameter("ruc");
		String email = request.getParameter("email");
		String telefono = request.getParameter("telefono");
		String departamento = request.getParameter("departamento");
		String provincia = request.getParameter("provincia");
		String distrito = request.getParameter("distrito");
		String direccion = request.getParameter("direccion");
		String representante = request.getParameter("representante");
		ClienteService cs = new ClienteService();
		ClienteDTO c = new ClienteDTO();
		c.setCod_cliente(codigo);
		c.setRazsoc_cliente(razon);
		c.setRuc_cliente(ruc);
		c.setEmail_cliente(email);
		c.setTelefono_cliente(telefono);
		c.setDepartamento_cliente(departamento);
		c.setProvincia_cliente(provincia);
		c.setDistrito_cliente(distrito);
		c.setDireccion_cliente(direccion);
		c.setRepresentante_cliente(representante);
		int i = cs.actualizaCliente(c);
		if (i == 0) {
			response.sendRedirect("error.jsp");
		} else {
			response.sendRedirect("mcliente.jsp");
		}
	}

}
