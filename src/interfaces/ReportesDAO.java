package interfaces;

import java.util.ArrayList;

import beans.Reporte;

public interface ReportesDAO {
	
	public ArrayList<Reporte> reportePorTipoTrabajo(String cod_tiptrabajo);

	public ArrayList<Reporte> reporteTipoTrabajo();

	public ArrayList<Reporte> reportePorCliente(String cod_cliente);

	public ArrayList<Reporte> reporteCliente();
	
	public ArrayList<Reporte> reportePorFechas(String fi, String ff);

	public ArrayList<Reporte> reporteFechas();
	
	public ArrayList<Reporte> listaParticipado(String cod_trabajador);
	
	public ArrayList<Reporte> listaParticipas(String cod_trabajador);
	
}
