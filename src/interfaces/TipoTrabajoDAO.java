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
}
