package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import beans.TrabajadorDTO;
import interfaces.TrabajadorDAO;
import utils.MySQLConexion;

public class MySQLTrabajadorDAO implements TrabajadorDAO {

	@Override
	public TrabajadorDTO buscaTrabajador(String cod_trabajador) {
		TrabajadorDTO t = null;
		Connection cn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "select * from TRABAJADOR where COD_TRABAJADOR=?";
			ps = cn.prepareStatement(sql);
			ps.setString(1, cod_trabajador);
			rs = ps.executeQuery();
			if (rs.next()) {
				t = new TrabajadorDTO();
				t.setCod_trabajador(rs.getString(1));
				t.setNom_trabajador(rs.getString(2));
				t.setApep_trabajador(rs.getString(3));
				t.setApem_trabajador(rs.getString(4));
				t.setDni_trabajador(rs.getString(5));
				t.setEmail_trabajador(rs.getString(6));
				t.setTelefono_trabajador(rs.getString(7));
				t.setDepartamento_trabajador(rs.getString(8));
				t.setProvincia_trabajador(rs.getString(9));
				t.setDistrito_trabajador(rs.getString(10));
				t.setDireccion_trabajador(rs.getString(11));
				t.setUser_trabajador(rs.getString(12));
				t.setPass_trabajador(rs.getString(13));
				t.setTipo_trabajador(rs.getString(14));
				t.setEstado_trabajador(rs.getString(15));
				t.setFecha_reg_trabajador(rs.getString(16));
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
		return t;
	}

	@Override
	public ArrayList<TrabajadorDTO> listaTrabajador() {
		ArrayList<TrabajadorDTO> lista = new ArrayList<TrabajadorDTO>();
		ResultSet rs = null;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ListaTrabajador()}";
			cs = cn.prepareCall(sql);
			rs = cs.executeQuery();
			while (rs.next()) {
				TrabajadorDTO t = new TrabajadorDTO();
				t.setCod_trabajador(rs.getString(1));
				t.setNom_trabajador(rs.getString(2));
				t.setApep_trabajador(rs.getString(3));
				t.setApem_trabajador(rs.getString(4));
				t.setDni_trabajador(rs.getString(5));
				t.setEmail_trabajador(rs.getString(6));
				t.setTelefono_trabajador(rs.getString(7));
				t.setDepartamento_trabajador(rs.getString(8));
				t.setProvincia_trabajador(rs.getString(9));
				t.setDistrito_trabajador(rs.getString(10));
				t.setDireccion_trabajador(rs.getString(11));
				t.setUser_trabajador(rs.getString(12));
				t.setPass_trabajador(rs.getString(13));
				t.setTipo_trabajador(rs.getString(14));
				t.setEstado_trabajador(rs.getString(15));
				t.setFecha_reg_trabajador(rs.getString(16));
				lista.add(t);
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
	public int registraTrabajador(TrabajadorDTO t) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_InsertaTrabajador(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'ACTIVO', CURDATE())}";
			cs = cn.prepareCall(sql);
			cs.setString(1, generarCodigoTrabajador());
			cs.setString(2, t.getNom_trabajador());
			cs.setString(3, t.getApep_trabajador());
			cs.setString(4, t.getApem_trabajador());
			cs.setString(5, t.getDni_trabajador());
			cs.setString(6, t.getEmail_trabajador());
			cs.setString(7, t.getTelefono_trabajador());
			cs.setString(8, t.getDepartamento_trabajador());
			cs.setString(9, t.getProvincia_trabajador());
			cs.setString(10, t.getDistrito_trabajador());
			cs.setString(11, t.getDireccion_trabajador());
			cs.setString(12, t.getUser_trabajador());
			cs.setString(13, t.getPass_trabajador());
			cs.setString(14, t.getTipo_trabajador());
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
	public int actualizaTrabajador(TrabajadorDTO t) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ActualizaTrabajador(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, t.getCod_trabajador());
			cs.setString(2, t.getNom_trabajador());
			cs.setString(3, t.getApep_trabajador());
			cs.setString(4, t.getApem_trabajador());
			cs.setString(5, t.getDni_trabajador());
			cs.setString(6, t.getEmail_trabajador());
			cs.setString(7, t.getTelefono_trabajador());
			cs.setString(8, t.getDepartamento_trabajador());
			cs.setString(9, t.getProvincia_trabajador());
			cs.setString(10, t.getDistrito_trabajador());
			cs.setString(11, t.getDireccion_trabajador());
			cs.setString(12, t.getPass_trabajador());
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
	public int desactivaTrabajador(String cod_trabajador) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_DesactivaTrabajador(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, cod_trabajador);
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
	public String generarCodigoTrabajador() {
		Connection cn = null;
		Statement st = null;
		ResultSet rs = null;
		String ultimo = null;
		int num = 1000;
		num++;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "select COD_TRABAJADOR from TRABAJADOR order by COD_TRABAJADOR desc limit 1";
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
		return "T" + num;
	}

	@Override
	public int activaTrabajador(String cod_trabajador) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ActivaTrabajador(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, cod_trabajador);
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
	public int eliminaTrabajador(String cod_trabajador) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_EliminaTrabajador(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, cod_trabajador);
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
	public TrabajadorDTO iniciarSesion(String user_trabajador) {
		TrabajadorDTO tr = null;
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "select * from TRABAJADOR where user_trabajador = ?";
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, user_trabajador);
			rs = pstm.executeQuery();
			if (rs.next()) {
				tr = new TrabajadorDTO();
				tr.setCod_trabajador(rs.getString(1));
				tr.setNom_trabajador(rs.getString(2));
				tr.setApep_trabajador(rs.getString(3));
				tr.setApem_trabajador(rs.getString(4));
				tr.setDni_trabajador(rs.getString(5));
				tr.setEmail_trabajador(rs.getString(6));
				tr.setTelefono_trabajador(rs.getString(7));
				tr.setDepartamento_trabajador(rs.getString(8));
				tr.setProvincia_trabajador(rs.getString(9));
				tr.setDistrito_trabajador(rs.getString(10));
				tr.setDireccion_trabajador(rs.getString(11));
				tr.setUser_trabajador(rs.getString(12));
				tr.setPass_trabajador(rs.getString(13));
				tr.setTipo_trabajador(rs.getString(14));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstm != null)
					pstm.close();
				if (cn != null)
					cn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return tr;
	}
}
