package service;

import java.util.ArrayList;

import beans.TipoTrabajoDTO;
import dao.DAOFactory;
import interfaces.TipoTrabajoDAO;

public class TipoTrabajoService {
	DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	TipoTrabajoDAO dao = fabrica.getTipoTrabajoDAO();

	public TipoTrabajoDTO buscaTipoTrabajo(String cod_tiptrabajo) {
		return dao.buscaTipoTrabajo(cod_tiptrabajo);
	}

	public ArrayList<TipoTrabajoDTO> listaTipoTrabajo() {
		return dao.listaTipoTrabajo();
	}

	public int registraTipoTrabajo(TipoTrabajoDTO t) {
		return dao.registraTipoTrabajo(t);
	}

	public int actualizaTipoTrabajo(TipoTrabajoDTO t) {
		return dao.actualizaTipoTrabajo(t);
	}

	public String generarCodigoTipoTrabajo() {
		return dao.generarCodigoTipoTrabajo();
	}

	public int desactivaTipoTrabajo(String cod_tiptrabajo) {
		return dao.desactivaTipoTrabajo(cod_tiptrabajo);
	}

	public int activaTipoTrabajo(String cod_tiptrabajo) {
		return dao.activaTipoTrabajo(cod_tiptrabajo);
	}

	public int eliminaTipoTrabajo(String cod_tiptrabajo) {
		return dao.eliminaTipoTrabajo(cod_tiptrabajo);

	}
}
