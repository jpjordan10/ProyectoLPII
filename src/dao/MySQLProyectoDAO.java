package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import beans.ProyectoDTO;
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
			String sql = "{call usp_RegistrarProyecto (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
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

}
