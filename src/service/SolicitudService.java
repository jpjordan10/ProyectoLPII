package service;

import beans.SolicitudDTO;
import dao.DAOFactory;
import interfaces.SolicitudDAO;

public class SolicitudService {
	DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	SolicitudDAO dao = fabrica.getSolicitudDAO();
	
	public int registrarSolicitud(SolicitudDTO x){
		return dao.registrarSolicitud(x);
	}

	public String generarNumSolicitud(){
		return dao.generarNumSolicitud();
	}
}
