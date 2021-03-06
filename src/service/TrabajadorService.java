package service;

import java.util.ArrayList;

import beans.TrabajadorDTO;
import dao.DAOFactory;
import interfaces.TrabajadorDAO;

public class TrabajadorService {
	DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	TrabajadorDAO dao = fabrica.getTrabajadorDAO();

	public TrabajadorDTO buscaTrabajador(String cod_trabajador) {
		return dao.buscaTrabajador(cod_trabajador);
	}

	public ArrayList<TrabajadorDTO> listaTrabajador() {
		return dao.listaTrabajador();
	}

	public int registraTrabajador(TrabajadorDTO t) {
		return dao.registraTrabajador(t);
	}

	public int actualizaTrabajador(TrabajadorDTO t) {
		return dao.actualizaTrabajador(t);
	}

	public String generarCodigoTrabajador() {
		return dao.generarCodigoTrabajador();
	}

	public int desactivaTrabajador(String cod_trabajador) {
		return dao.desactivaTrabajador(cod_trabajador);
	}

	public int activaTrabajador(String cod_trabajador) {
		return dao.activaTrabajador(cod_trabajador);
	}

	public int eliminaTrabajador(String cod_trabajador) {
		return dao.eliminaTrabajador(cod_trabajador);
	}

	public TrabajadorDTO iniciarSesion(String user_trabajador) {
		return dao.iniciarSesion(user_trabajador);
	}

	public ArrayList<TrabajadorDTO> listaTrabajadorArqObr() {
		return dao.listaTrabajadorArqObr();
	}

	public ArrayList<TrabajadorDTO> listaTrabajadorArq() {
		return dao.listaTrabajadorArq();
	}
}
