package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import beans.SolicitudDTO;
import interfaces.SolicitudDAO;
import utils.MySQLConexion;

public class MySQLSolicitudDAO implements SolicitudDAO {

	@Override
	public int registrarSolicitud(SolicitudDTO x) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_RegistraSolicitud(?, ?, ?, ?, ?, ?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, generarNumSolicitud());
			cs.setString(2, x.getPermisos_solicitud());
			cs.setString(3, x.getEstado_solicitud());
			cs.setString(4, x.getFecha_reg_solicitud());
			cs.setString(5, x.getFecha_act_solicitud());
			cs.setString(6, x.getCod_cliente());
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
	public String generarNumSolicitud() {
		Connection cn = null;
		Statement st = null;
		ResultSet rs = null;
		String ultimo = null;
		int num = 1000000;
		num++;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "select NUM_SOLICITUD from SOLICITUD order by NUM_SOLICITUD desc limit 1";
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
		return "S" + num;
	}

}
