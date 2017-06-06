package dao;

import interfaces.ClienteDAO;
import interfaces.TipoTrabajoDAO;
import interfaces.TrabajadorDAO;

public class MySQLDAOFactory extends DAOFactory {

	@Override
	public TrabajadorDAO getTrabajadorDAO() {
		return new MySQLTrabajadorDAO();
	}

	@Override
	public ClienteDAO getClienteDAO() {
		return new MySQLClienteDAO();
	}

	@Override
	public TipoTrabajoDAO getTipoTrabajoDAO() {
		return new MySQLTipoTrabajoDAO();
	}

}
