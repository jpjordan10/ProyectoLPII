package interfaces;

import java.util.ArrayList;

import beans.Reporte;

public interface ReportesDAO {
	
	public ArrayList<Reporte> proyectosDirigidos(String cod_trabajador);
	
	public ArrayList<Reporte> proyectosDireccion(String cod_trabajador);

	public ArrayList<Reporte> proyectosParticipas(String cod_trabajador);

	public ArrayList<Reporte> proyectosParticipados(String cod_trabajador);

}
