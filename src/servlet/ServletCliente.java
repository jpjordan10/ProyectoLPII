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
		}
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
		String cod = request.getParameter("cod");
		ClienteService cs = new ClienteService();
		ClienteDTO c = cs.buscaCliente(cod);
		request.setAttribute("cli", c);
		request.getRequestDispatcher("/acliente.jsp").forward(request, response);
	}

	private void actualiza(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

}