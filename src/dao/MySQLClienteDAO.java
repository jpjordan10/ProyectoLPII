package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import beans.ClienteDTO;
import interfaces.ClienteDAO;
import utils.MySQLConexion;

public class MySQLClienteDAO implements ClienteDAO {

	@Override
	public ClienteDTO buscaCliente(String cod_cliente) {
		ClienteDTO c = null;
		Connection cn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "select * from CLIENTE where COD_CLIENTE=?";
			ps = cn.prepareStatement(sql);
			ps.setString(1, cod_cliente);
			rs = ps.executeQuery();
			if (rs.next()) {
				c = new ClienteDTO();
				c.setCod_cliente(rs.getString(1));
				c.setRazsoc_cliente(rs.getString(2));
				c.setRuc_cliente(rs.getString(3));
				c.setEmail_cliente(rs.getString(4));
				c.setTelefono_cliente(rs.getString(5));
				c.setDepartamento_cliente(rs.getString(6));
				c.setProvincia_cliente(rs.getString(7));
				c.setDistrito_cliente(rs.getString(8));
				c.setDireccion_cliente(rs.getString(9));
				c.setTipo_cliente(rs.getString(10));
				c.setRepresentante_cliente(rs.getString(11));
				c.setFecha_reg_cliente(rs.getString(12));
				c.setEstado_cliente(rs.getString(13));
				
			}
		} catch (Exception e) {
			System.out.println("Error en la sentencia");
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (cn != null)
					cn.close();
			} catch (Exception e2) {
				System.out.println("Error en cerrar");
			}
		}
		return c;
	}

	@Override
	public ArrayList<ClienteDTO> listaCliente() {
		ArrayList<ClienteDTO> lista = new ArrayList<ClienteDTO>();
		ResultSet rs = null;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ListaCliente()}";
			cs = cn.prepareCall(sql);
			rs = cs.executeQuery();
			while (rs.next()) {
				ClienteDTO c = new ClienteDTO();
				c.setCod_cliente(rs.getString(1));
				c.setRazsoc_cliente(rs.getString(2));
				c.setRuc_cliente(rs.getString(3));
				c.setEmail_cliente(rs.getString(4));
				c.setTelefono_cliente(rs.getString(5));
				c.setDepartamento_cliente(rs.getString(6));
				c.setProvincia_cliente(rs.getString(7));
				c.setDistrito_cliente(rs.getString(8));
				c.setDireccion_cliente(rs.getString(9));
				c.setTipo_cliente(rs.getString(10));
				c.setRepresentante_cliente(rs.getString(11));
				c.setFecha_reg_cliente(rs.getString(12));
				c.setEstado_cliente(rs.getString(13));
				lista.add(c);
			}
		} catch (Exception e) {
			System.out.println("Error en la sentencia");
		} finally {
			try {
				if (cn != null)
					cn.close();
				if (rs != null)
					rs.close();
				if (cs != null)
					cs.close();
			} catch (Exception e) {
				System.out.println("Error al cerrar");
			}
		}
		return lista;
	}

	@Override
	public int registraCliente(ClienteDTO c) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_InsertaCliente(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'ACTIVO')}";
			cs = cn.prepareCall(sql);
			cs.setString(1, generarCodigoCliente());
			cs.setString(2, c.getRazsoc_cliente());
			cs.setString(3, c.getRuc_cliente());
			cs.setString(4, c.getEmail_cliente());
			cs.setString(5, c.getTelefono_cliente());
			cs.setString(6, c.getDepartamento_cliente());
			cs.setString(7, c.getProvincia_cliente());
			cs.setString(8, c.getDistrito_cliente());
			cs.setString(9, c.getDireccion_cliente());
			cs.setString(10, c.getTipo_cliente());
			cs.setString(11, c.getRepresentante_cliente());
			cs.setString(12, c.getFecha_reg_cliente());
			valor = cs.executeUpdate();

		} catch (Exception e) {
			System.out.println("Error en la sentencia");
		} finally {
			try {
				if (cn != null)
					cn.close();
				if (cs != null)
					cs.close();
			} catch (Exception e) {
				System.out.println("Error al cerrar");
			}
		}
		return valor;
	}

	@Override
	public int actualizaCliente(ClienteDTO c) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ActualizaCliente(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, c.getCod_cliente());
			cs.setString(2, c.getRazsoc_cliente());
			cs.setString(3, c.getRuc_cliente());
			cs.setString(4, c.getEmail_cliente());
			cs.setString(5, c.getTelefono_cliente());
			cs.setString(6, c.getDepartamento_cliente());
			cs.setString(7, c.getProvincia_cliente());
			cs.setString(8, c.getDistrito_cliente());
			cs.setString(9, c.getDireccion_cliente());
			cs.setString(10, c.getRepresentante_cliente());
			valor = cs.executeUpdate();

		} catch (Exception e) {
			System.out.println("Error en la sentencia");
		} finally {
			try {
				if (cn != null)
					cn.close();
				if (cs != null)
					cs.close();
			} catch (Exception e) {
				System.out.println("Error al cerrar");
			}
		}
		return valor;
	}

	@Override
	public String generarCodigoCliente() {
		Connection cn = null;
		Statement st = null;
		ResultSet rs = null;
		String ultimo = null;
		int num = 1000;
		num++;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "select COD_CLIENTE from CLIENTE order by COD_CLIENTE desc limit 1";
			st = cn.createStatement();
			rs = st.executeQuery(sql);
			if (rs.next()) {
				ultimo = rs.getString(1);
			}
		} catch (Exception e) {
			System.out.println("Error en la sentencia");
		}
		try {
			num = Integer.parseInt(ultimo.substring(1)) + 1;
		} catch (Exception e) {
			num = 1000;
		} finally {
			try {
				if (cn != null)
					cn.close();
				if (rs != null)
					rs.close();
				if (st != null)
					st.close();
			} catch (Exception e) {
				System.out.println("Errro al cerrar");
			}
		}
		return "C" + num;
	}

	@Override
	public int desactivaCliente(String cod_cliente) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_DesactivaCliente(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, cod_cliente);
			valor = cs.executeUpdate();

		} catch (Exception e) {
			System.out.println("Error en la sentencia");
		} finally {
			try {
				if (cn != null)
					cn.close();
				if (cs != null)
					cs.close();
			} catch (Exception e) {
				System.out.println("Error al cerrar");
			}
		}
		return valor;
	}

	@Override
	public int activaCliente(String cod_cliente) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ActivaCliente(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, cod_cliente);
			valor = cs.executeUpdate();

		} catch (Exception e) {
			System.out.println("Error en la sentencia");
		} finally {
			try {
				if (cn != null)
					cn.close();
				if (cs != null)
					cs.close();
			} catch (Exception e) {
				System.out.println("Error al cerrar");
			}
		}
		return valor;
	}

	@Override
	public int eliminaCliente(String cod_cliente) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_EliminaCliente(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, cod_cliente);
			valor = cs.executeUpdate();

		} catch (Exception e) {
			System.out.println("Error en la sentencia");
		} finally {
			try {
				if (cn != null)
					cn.close();
				if (cs != null)
					cs.close();
			} catch (Exception e) {
				System.out.println("Error al cerrar");
			}
		}
		return valor;
	}

}
