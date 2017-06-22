package interfaces;

import java.util.ArrayList;

import beans.Reporte;
import beans.SolicitudDTO;

public interface SolicitudDAO {
	public int registrarSolicitud(SolicitudDTO x);

	public String generarNumSolicitud();
	
	public ArrayList<Reporte> listaSolicitud();
	
	public Reporte buscaSolicitud(String num);
	
	public int concederPermisos(SolicitudDTO x);
	
	public int concederPermisos1(String num, String fc);
}
