package dao;

import interfaces.ClienteDAO;
import interfaces.ObreroDAO;
import interfaces.ReportesDAO;
import interfaces.SolicitudDAO;
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

	@Override
	public SolicitudDAO getSolicitudDAO() {
		return new MySQLSolicitudDAO();
	}

	@Override
	public ReportesDAO getReportesDAO() {
		return new MySQLReportesDAO();
	}

	@Override
	public ObreroDAO getObreroDAO() {
		return new MySQLObreroDAO();
	}

}
