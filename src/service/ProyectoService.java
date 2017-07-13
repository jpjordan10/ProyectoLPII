package service;

import java.util.ArrayList;

import beans.ProyectoDTO;
import beans.Reporte;
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
	public Reporte buscaProyecto(String num){
		return dao.buscaProyecto(num);
	}
	public ArrayList<Reporte> listaProyecto(){
		return dao.listaProyecto();
	}
	public int actualizaProyecto(ProyectoDTO x){
		return dao.actualizaProyecto(x);
	}
}
