package service;

import beans.ProyectoDTO;
import dao.DAOFactory;
import interfaces.ProyectoDAO;

public class ProyectoService {
	DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	ProyectoDAO dao = fabrica.getProyectoDAO();
	
	public int registraProyecto(ProyectoDTO x){
		return dao.registraProyecto(x);
	}

	public String generarCodigoProyecto(){
		return dao.generarCodigoProyecto();
	}
	public int actualizarSolicitudAtendida(String n){
		return dao.actualizarSolicitudAtendida(n);
	}
}
