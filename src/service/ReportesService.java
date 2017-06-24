package service;

import java.util.ArrayList;

import beans.Reporte;
import dao.DAOFactory;
import interfaces.ReportesDAO;

public class ReportesService {
	
	DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	
	ReportesDAO dao = fabrica.getReportesDAO();
	
	public ArrayList<Reporte> proyectosDirigidos(String cod_trabajador){
		return dao.proyectosDirigidos(cod_trabajador);
	}
	
	public ArrayList<Reporte> proyectosDireccion(String cod_trabajador){
		return dao.proyectosDireccion(cod_trabajador);
	}

	public ArrayList<Reporte> proyectosParticipas(String cod_trabajador){
		return dao.proyectosParticipas(cod_trabajador);
	}

	public ArrayList<Reporte> proyectosParticipados(String cod_trabajador){
		return dao.proyectosParticipados(cod_trabajador);
	}

}