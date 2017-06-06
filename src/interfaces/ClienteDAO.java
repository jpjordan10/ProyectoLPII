package interfaces;

import java.util.ArrayList;

import beans.ClienteDTO;

public interface ClienteDAO {
	public ClienteDTO buscaCliente(String cod_cliente);

	public ArrayList<ClienteDTO> listaCliente();

	public int registraCliente(ClienteDTO c);

	public int actualizaCliente(ClienteDTO c);

	public String generarCodigoCliente();

	public int desactivaCliente(String cod_cliente);
}
