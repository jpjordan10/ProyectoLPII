package interfaces;

import java.util.ArrayList;

import beans.Reporte;
import beans.SolicitudDTO;

public interface SolicitudDAO {
	public int registrarSolicitud(SolicitudDTO x);

	public String generarNumSolicitud();
	
	public ArrayList<Reporte> listaSolicitud();
	
	public Reporte buscaSolicitud(String num);
}
