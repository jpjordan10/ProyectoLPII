package interfaces;

import java.util.ArrayList;

import beans.ProyectoDTO;
import beans.Reporte;

public interface ProyectoDAO {
	public int registraProyecto(ProyectoDTO x);

	public String generarCodigoProyecto();
	
	public int actualizarSolicitudAtendida(String n);
	
	public Reporte buscaProyecto(String num);
	
	public ArrayList<Reporte> listaProyecto();
	
	public int actualizaProyecto(ProyectoDTO x);
}
