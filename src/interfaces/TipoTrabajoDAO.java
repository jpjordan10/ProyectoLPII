package interfaces;

import java.util.ArrayList;

import beans.TipoTrabajoDTO;

public interface TipoTrabajoDAO {
	public TipoTrabajoDTO buscaTipoTrabajo(String cod_tiptrabajo);

	public ArrayList<TipoTrabajoDTO> listaTipoTrabajo();

	public int registraTipoTrabajo(TipoTrabajoDTO t);

	public int actualizaTipoTrabajo(TipoTrabajoDTO t);

	public String generarCodigoTipoTrabajo();

	public int desactivaTipoTrabajo(String cod_tiptrabajo);

	public int activaTipoTrabajo(String cod_tiptrabajo);

	public int eliminaTipoTrabajo(String cod_tiptrabajo);
	

	//	naho
	

	public ArrayList<TipoTrabajoDTO> listartipo(String cod_tiptrabajo);
}
