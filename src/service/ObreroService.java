package service;

import java.util.ArrayList;

import beans.Reporte;
import dao.DAOFactory;
import interfaces.ObreroDAO;

public class ObreroService {
	DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	ObreroDAO dao = fabrica.getObreroDAO();
	
	public ArrayList<Reporte> listaParticipado(String cod_trabajador){
		return dao.listaParticipado(cod_trabajador);
	}
	
	public ArrayList<Reporte> listaParticipas(String cod_trabajador){
		return dao.listaParticipas(cod_trabajador);
	}
}
