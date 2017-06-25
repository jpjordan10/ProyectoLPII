package interfaces;

import java.util.ArrayList;

import beans.Reporte;

public interface ObreroDAO {
	
	public ArrayList<Reporte> listaParticipado(String cod_trabajador);
	
	public ArrayList<Reporte> listaParticipas(String cod_trabajador);
	
}
