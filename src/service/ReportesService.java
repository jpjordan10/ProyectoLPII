package service;

import java.util.ArrayList;

import beans.Reporte;
import dao.DAOFactory;
import interfaces.ReportesDAO;

public class ReportesService {

	DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);

	ReportesDAO dao = fabrica.getReportesDAO();

	public ArrayList<Reporte> reportePorTipoTrabajo(String cod_tiptrabajo) {
		return dao.reportePorTipoTrabajo(cod_tiptrabajo);
	}

	public ArrayList<Reporte> reporteTipoTrabajo() {
		return dao.reporteTipoTrabajo();
	}
	public ArrayList<Reporte> reportePorCliente(String cod_cliente){
		return dao.reportePorCliente(cod_cliente);
	}

	public ArrayList<Reporte> reporteCliente(){
		return dao.reporteCliente();
	}

	public ArrayList<Reporte> listaParticipado(String cod_trabajador){
		return dao.listaParticipado(cod_trabajador);
	}
	
	public ArrayList<Reporte> listaParticipas(String cod_trabajador){
		return dao.listaParticipas(cod_trabajador);
	}
}
