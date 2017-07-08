package dao;

import interfaces.ClienteDAO;
import interfaces.ReportesDAO;
import interfaces.SolicitudDAO;
import interfaces.TipoTrabajoDAO;
import interfaces.TrabajadorDAO;

public abstract class DAOFactory {
	public static final int MYSQL = 1;

	public abstract TrabajadorDAO getTrabajadorDAO();
	public abstract ClienteDAO getClienteDAO();
	public abstract TipoTrabajoDAO getTipoTrabajoDAO();
	public abstract	SolicitudDAO getSolicitudDAO();
	public abstract ReportesDAO getReportesDAO(); 

	public static DAOFactory getDAOFactory(int qFactory) {
		switch (qFactory) {
		case MYSQL:
			return new MySQLDAOFactory();
		default:
			return null;
		}
	}
}
