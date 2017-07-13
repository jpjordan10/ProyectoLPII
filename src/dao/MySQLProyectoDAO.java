package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import beans.ProyectoDTO;
import beans.Reporte;
import interfaces.ProyectoDAO;
import utils.MySQLConexion;

public class MySQLProyectoDAO implements ProyectoDAO {

	@Override
	public int registraProyecto(ProyectoDTO x) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_RegistrarProyecto (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, generarCodigoProyecto());
			cs.setString(2, x.getFecha_reg_proyecto());
			cs.setString(3, x.getFecha_act_proyecto());
			cs.setString(4, x.getDepartamento_proyecto());
			cs.setString(5, x.getProvincia_proyecto());
			cs.setString(6, x.getDistrito_proyecto());
			cs.setString(7, x.getDireccion_proyecto());
			cs.setString(8, x.getEtapa_proyecto());
			cs.setDouble(9, x.getCosto_proyecto());
			cs.setInt(10, x.getCan_mes_proyecto());
			cs.setString(11, x.getNum_solicitud());
			cs.setString(12, x.getCod_tiptrabajo());
			cs.setInt(13, 1);
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
	public String generarCodigoProyecto() {
		Connection cn = null;
		Statement st = null;
		ResultSet rs = null;
		String ultimo = null;
		int num = 1000000;
		num++;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "select NUM_PROYECTO from PROYECTO order by NUM_PROYECTO desc limit 1";
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
			num = 1000000;
		} finally {
			try {
				if (cn != null)
					cn.close();
				if (rs != null)
					rs.close();
				if (st != null)
					st.close();
			} catch (Exception e) {
				System.out.println("Error al cerrar");
			}
		}
		return "P" + num;
	}

	@Override
	public int actualizarSolicitudAtendida(String n) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{CALL usp_ActualizarSolicitudAtendida(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, n);
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
	public Reporte buscaProyecto(String num) {
		Reporte x = null;
		Connection cn = null;
		CallableStatement cs = null;
		ResultSet rs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ListarBusquedaProyecto(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, num);
			rs = cs.executeQuery();
			if (rs.next()) {
				x = new Reporte();
				x.setNum_proyecto(rs.getString(1));
				x.setRazsoc_cliente(rs.getString(2));
				x.setFecha_reg_proyecto(rs.getString(3));
				x.setDepartamento_proyecto(rs.getString(4));
				x.setProvincia_proyecto(rs.getString(5));
				x.setDistrito_proyecto(rs.getString(6));
				x.setDireccion_proyecto(rs.getString(7));
				x.setDes_tiptrabajo(rs.getString(8));
				x.setCosto_proyecto(rs.getDouble(9));
				x.setCan_mes_proyecto(rs.getInt(10));
				x.setFecha_act_proyecto(rs.getString(11));
				x.setEtapa_proyecto(rs.getString(12));
			}
		} catch (Exception e) {
			System.out.println("Error en la sentencia");
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (cs != null)
					cs.close();
				if (cn != null)
					cn.close();
			} catch (Exception e2) {
				System.out.println("Error en cerrar");
			}
		}
		return x;
	}

	@Override
	public ArrayList<Reporte> listaProyecto() {
		ArrayList<Reporte> lista = new ArrayList<Reporte>();
		ResultSet rs = null;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ListarProyectos()}";
			cs = cn.prepareCall(sql);
			rs = cs.executeQuery();
			while (rs.next()) {
				Reporte x = new Reporte();
				x.setNum_proyecto(rs.getString(1));
				x.setRazsoc_cliente(rs.getString(2));
				x.setFecha_reg_proyecto(rs.getString(3));
				x.setDepartamento_proyecto(rs.getString(4));
				x.setProvincia_proyecto(rs.getString(5));
				x.setDistrito_proyecto(rs.getString(6));
				x.setDireccion_proyecto(rs.getString(7));
				x.setDes_tiptrabajo(rs.getString(8));
				x.setEtapa_proyecto(rs.getString(9));
				x.setCosto_proyecto(rs.getDouble(10));
				x.setCan_mes_proyecto(rs.getInt(11));
				x.setFecha_act_proyecto(rs.getString(12));
				lista.add(x);
			}
		} catch (Exception e) {
			System.out.println("Error en la sentenciaaqui");
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
	public int actualizaProyecto(ProyectoDTO x) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ActualizaProyecto (?, ?, ?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, x.getNum_proyecto());
			cs.setString(2, x.getFecha_act_proyecto());
			cs.setString(3, x.getEtapa_proyecto());
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
