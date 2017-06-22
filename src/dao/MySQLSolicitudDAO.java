package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import beans.Reporte;
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

	@Override
	public ArrayList<Reporte> listaSolicitud() {
		ArrayList<Reporte> lista = new ArrayList<Reporte>();
		ResultSet rs = null;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ListarSolicitud()}";
			cs = cn.prepareCall(sql);
			rs = cs.executeQuery();
			while (rs.next()) {
				Reporte x = new Reporte();
				x.setNum_solicitud(rs.getString(1));
				x.setRuc_cliente(rs.getString(2));
				x.setRazsoc_cliente(rs.getString(3));
				x.setRepresentante_cliente(rs.getString(4));
				x.setPermisos_solicitud(rs.getString(5));
				x.setEstado_solicitud(rs.getString(6));
				x.setFecha_reg_solicitud(rs.getString(7));
				x.setFecha_act_solicitud(rs.getString(8));
				lista.add(x);
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
	public Reporte buscaSolicitud(String num) {
		Reporte x = null;
		Connection cn = null;
		CallableStatement cs = null;
		ResultSet rs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ListarBusquedaSolicitud(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, num);
			rs = cs.executeQuery();
			if (rs.next()) {
				x = new Reporte();
				x.setNum_solicitud(rs.getString(1));
				x.setPermisos_solicitud(rs.getString(2));
				x.setEstado_solicitud(rs.getString(3));
				x.setFecha_reg_solicitud(rs.getString(4));
				x.setFecha_act_solicitud(rs.getString(5));
				x.setCod_cliente(rs.getString(6));
				x.setRuc_cliente(rs.getString(7));
				x.setRazsoc_cliente(rs.getString(8));
				x.setRepresentante_cliente(rs.getString(9));
				x.setTipo_cliente(rs.getString(10));
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
	public int concederPermisos(SolicitudDTO x) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ActualizaSolicitud (?, ?, ?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, x.getNum_solicitud());
			cs.setString(2, x.getPermisos_solicitud());
			cs.setString(3, x.getFecha_act_solicitud());
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
	public int concederPermisos1(String num, String fc) {
		int valor = -1;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ConcederPermisos(?, ?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, num);
			cs.setString(2, fc);
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
