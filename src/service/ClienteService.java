package service;

import java.util.ArrayList;

import beans.ClienteDTO;
import dao.DAOFactory;
import interfaces.ClienteDAO;

public class ClienteService {
	DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	ClienteDAO dao = fabrica.getClienteDAO();

	public ClienteDTO buscaCliente(String cod_cliente) {
		return dao.buscaCliente(cod_cliente);
	}

	public ArrayList<ClienteDTO> listaCliente() {
		return dao.listaCliente();
	}
	
	public ArrayList<ClienteDTO> listaClienteAct() {
		return dao.listaClienteAct();
	}
	
	public int registraCliente(ClienteDTO c) {
		return dao.registraCliente(c);
	}

	public int actualizaCliente(ClienteDTO c) {
		return dao.actualizaCliente(c);
	}

	public String generarCodigoCliente() {
		return dao.generarCodigoCliente();
	}

	public int desactivaCliente(String cod_cliente) {
		return dao.desactivaCliente(cod_cliente);
	}

	public int activaCliente(String cod_cliente) {
		return dao.activaCliente(cod_cliente);
	}

	public int eliminaCliente(String cod_cliente) {
		return dao.eliminaCliente(cod_cliente);
		
	}
}
