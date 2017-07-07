package interfaces;

import java.util.ArrayList;

import beans.TrabajadorDTO;

public interface TrabajadorDAO {
	public TrabajadorDTO buscaTrabajador(String cod_trabajador);

	public ArrayList<TrabajadorDTO> listaTrabajador();
	
	public ArrayList<TrabajadorDTO> listaTrabajadorArqObr();
	
	public ArrayList<TrabajadorDTO> listaTrabajadorArq();

	public int registraTrabajador(TrabajadorDTO t);

	public int actualizaTrabajador(TrabajadorDTO t);

	public String generarCodigoTrabajador();

	public int desactivaTrabajador(String cod_trabajador);

	public int activaTrabajador(String cod_trabajador);

	public int eliminaTrabajador(String cod_trabajador);

	public TrabajadorDTO iniciarSesion(String user_trabajador);
}
