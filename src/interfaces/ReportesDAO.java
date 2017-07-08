package interfaces;

import java.util.ArrayList;

import beans.Reporte;

public interface ReportesDAO {

	public ArrayList<Reporte> proyectosDirigidos(String cod_trabajador);

	public ArrayList<Reporte> proyectosDireccion(String cod_trabajador);

	public ArrayList<Reporte> proyectosParticipas(String cod_trabajador);

	public ArrayList<Reporte> proyectosParticipados(String cod_trabajador);

	public ArrayList<Reporte> reportePorTipoTrabajo(String cod_tiptrabajo);

	public ArrayList<Reporte> reporteTipoTrabajo();

	public ArrayList<Reporte> reportePorCliente(String cod_cliente);

	public ArrayList<Reporte> reporteCliente();
	
	public ArrayList<Reporte> listaParticipado(String cod_trabajador);
	
	public ArrayList<Reporte> listaParticipas(String cod_trabajador);
	
}
