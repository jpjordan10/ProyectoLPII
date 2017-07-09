package interfaces;

import beans.ProyectoDTO;

public interface ProyectoDAO {
	public int registraProyecto(ProyectoDTO x);

	public String generarCodigoProyecto();
	
	public int actualizarSolicitudAtendida(String n);
}
