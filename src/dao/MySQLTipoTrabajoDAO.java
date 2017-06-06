package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import beans.TipoTrabajoDTO;
import interfaces.TipoTrabajoDAO;
import utils.MySQLConexion;

public class MySQLTipoTrabajoDAO implements TipoTrabajoDAO {

	@Override
	public TipoTrabajoDTO buscaTipoTrabajo(String cod_tiptrabajo) {
		Connection conn= null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		TipoTrabajoDTO obj = null;
		try {
			conn = MySQLConexion.getConexion();
			String sql ="select * from TIPO_TRABAJO where COD_TIPTRABAJO=?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, cod_tiptrabajo);
			rs = pstm.executeQuery();
			if(rs.next()){
				obj = new TipoTrabajoDTO();
				obj.setCod_tiptrabajo(rs.getString("COD_TIPTRABAJO"));
				obj.setDes_tiptrabajo(rs.getString("DES_TIPTRABAJO"));
				obj.setEstado_tiptrabajo(rs.getString("ESTADO_TIPTRABAJO"));
				obj.setFecha_reg_tiptrabajo(rs.getString("FECHA_REG_TIPOTRABAJO"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			try {
				if(rs!= null) rs.close();
				if(pstm!= null) pstm.close();
				if(conn!= null) conn.close();
			} catch (Exception e2) {
			}
		}
		
		return obj;
	}

	@Override
	public ArrayList<TipoTrabajoDTO> listaTipoTrabajo() {
		ArrayList<TipoTrabajoDTO> lista = new ArrayList<TipoTrabajoDTO>();
		ResultSet rs = null;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ListaTipoTrabajo()}";
			cs = cn.prepareCall(sql);
			rs = cs.executeQuery();
			while (rs.next()) {
				TipoTrabajoDTO t = new TipoTrabajoDTO();
				t.setCod_tiptrabajo(rs.getString(1));
				t.setDes_tiptrabajo(rs.getString(2));
				t.setEstado_tiptrabajo(rs.getString(3));
				t.setFecha_reg_tiptrabajo(rs.getString(4));
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
	public int registraTipoTrabajo(TipoTrabajoDTO t) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_InsertaTipoTrabajo(?, ?, 'ACTIVO',curdate())}";
			cs = cn.prepareCall(sql);
			cs.setString(1, generarCodigoTipoTrabajo());
			cs.setString(2, t.getDes_tiptrabajo());
			valor = cs.executeUpdate();

		} catch (Exception e) {
			System.out.println("Error en la sentencia ingresar");
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
	public int actualizaTipoTrabajo(TipoTrabajoDTO t) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ActualizaTipTrabajo(?, ?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, t.getCod_tiptrabajo());
			cs.setString(2, t.getDes_tiptrabajo());
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
	public String generarCodigoTipoTrabajo() {
		Connection cn = null;
		Statement st = null;
		ResultSet rs = null;
		String ultimo = null;
		int num = 1000;
		num++;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "select COD_TIPTRABAJO from TIPO_TRABAJO order by COD_TIPTRABAJO desc limit 1";
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
		return "W" + num;
	}

	@Override
	public int desactivaTipoTrabajo(String cod_tiptrabajo) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_DesactivaTipoTrabajo(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, cod_tiptrabajo);
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
