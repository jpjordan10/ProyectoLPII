package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import beans.Reporte;
import interfaces.ReportesDAO;
import utils.MySQLConexion;

public class MySQLReportesDAO implements ReportesDAO {

	@Override
	public ArrayList<Reporte> proyectosDirigidos(String cod_trabajador) {
		ArrayList<Reporte> lista = new ArrayList<Reporte>();
		ResultSet rs = null;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ProyectosDirigidos(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1,cod_trabajador);
			rs = cs.executeQuery();
			while (rs.next()) {
				Reporte r = new Reporte();
				r.setNum_proyecto(rs.getString(1));
				r.setFecha_reg_proyecto(rs.getString(2));
				r.setFecha_act_proyecto(rs.getString(3));
				r.setDepartamento_proyecto(rs.getString(4));
				r.setProvincia_proyecto(rs.getString(5));
				r.setDistrito_proyecto(rs.getString(6));
				r.setDireccion_proyecto(rs.getString(7));
				r.setEtapa_proyecto(rs.getString(8));
				r.setCosto_proyecto(rs.getDouble(9));
				//r.setMonto_total_proyecto(rs.getDouble(10));
				r.setCan_mes_proyecto(rs.getInt(11));
				r.setNum_solicitud(rs.getString(12));
				lista.add(r);
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
	public ArrayList<Reporte> proyectosDireccion(String cod_trabajador) {
		ArrayList<Reporte> lista = new ArrayList<Reporte>();
		ResultSet rs = null;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ProyectosDireccion(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, cod_trabajador);
			rs = cs.executeQuery();
			while (rs.next()) {
				Reporte r = new Reporte();
				r.setNum_proyecto(rs.getString(1));
				r.setFecha_reg_proyecto(rs.getString(2));
				r.setFecha_act_proyecto(rs.getString(3));
				r.setDepartamento_proyecto(rs.getString(4));
				r.setProvincia_proyecto(rs.getString(5));
				r.setDistrito_proyecto(rs.getString(6));
				r.setDireccion_proyecto(rs.getString(7));
				r.setEtapa_proyecto(rs.getString(8));
				r.setCosto_proyecto(rs.getDouble(9));
				//r.setMonto_total_proyecto(rs.getDouble(10));
				r.setCan_mes_proyecto(rs.getInt(11));
				r.setNum_solicitud(rs.getString(12));
				lista.add(r);
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
	public ArrayList<Reporte> proyectosParticipas(String cod_trabajador) {
		ArrayList<Reporte> lista = new ArrayList<Reporte>();
		ResultSet rs = null;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ProyectosParticipas(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, cod_trabajador);
			rs = cs.executeQuery();
			while (rs.next()) {
				Reporte r = new Reporte();
				r.setNum_proyecto(rs.getString(1));
				r.setFecha_reg_proyecto(rs.getString(2));
				r.setFecha_act_proyecto(rs.getString(3));
				r.setDepartamento_proyecto(rs.getString(4));
				r.setProvincia_proyecto(rs.getString(5));
				r.setDistrito_proyecto(rs.getString(6));
				r.setDireccion_proyecto(rs.getString(7));
				r.setEtapa_proyecto(rs.getString(8));
				r.setCosto_proyecto(rs.getDouble(9));
				//r.setMonto_total_proyecto(rs.getDouble(10));
				r.setCan_mes_proyecto(rs.getInt(11));
				r.setNum_solicitud(rs.getString(12));
				//r.setSueldo_mes_det_proyecto(rs.getDouble(13));
				//r.setSueldo_tot_det_proyecto(rs.getDouble(14));
				lista.add(r);
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
	public ArrayList<Reporte> proyectosParticipados(String cod_trabajador) {
		ArrayList<Reporte> lista = new ArrayList<Reporte>();
		ResultSet rs = null;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ProyectosParticipados(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, cod_trabajador);
			rs = cs.executeQuery();
			while (rs.next()) {
				Reporte r = new Reporte();
				r.setNum_proyecto(rs.getString(1));
				r.setFecha_reg_proyecto(rs.getString(2));
				r.setFecha_act_proyecto(rs.getString(3));
				r.setDepartamento_proyecto(rs.getString(4));
				r.setProvincia_proyecto(rs.getString(5));
				r.setDistrito_proyecto(rs.getString(6));
				r.setDireccion_proyecto(rs.getString(7));
				r.setEtapa_proyecto(rs.getString(8));
				r.setCosto_proyecto(rs.getDouble(9));
				//r.setMonto_total_proyecto(rs.getDouble(10));
				r.setCan_mes_proyecto(rs.getInt(11));
				r.setNum_solicitud(rs.getString(12));
				//r.setSueldo_mes_det_proyecto(rs.getDouble(13));
				//r.setSueldo_tot_det_proyecto(rs.getDouble(14));
				lista.add(r);
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
	public ArrayList<Reporte> reportePorTipoTrabajo(String cod_tiptrabajo) {
		ArrayList<Reporte> lista = new ArrayList<Reporte>();
		ResultSet rs = null;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ReportePorTipoDeTrabajo(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, cod_tiptrabajo);
			rs = cs.executeQuery();
			while (rs.next()) {
				Reporte r = new Reporte();
				r.setNum_proyecto(rs.getString(1));
				r.setRazsoc_cliente(rs.getString(2));
				r.setEtapa_proyecto(rs.getString(3));
				r.setFecha_act_proyecto(rs.getString(4));
				r.setDepartamento_proyecto(rs.getString(5));
				r.setProvincia_proyecto(rs.getString(6));
				r.setDistrito_proyecto(rs.getString(7));
				r.setDireccion_proyecto(rs.getString(8));
				r.setDes_tiptrabajo(rs.getString(9));
				lista.add(r);
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
	public ArrayList<Reporte> reporteTipoTrabajo() {
		ArrayList<Reporte> lista = new ArrayList<Reporte>();
		ResultSet rs = null;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ReporteTipoDeTrabajo()}";
			cs = cn.prepareCall(sql);
			rs = cs.executeQuery();
			while (rs.next()) {
				Reporte r = new Reporte();
				r.setNum_proyecto(rs.getString(1));
				r.setRazsoc_cliente(rs.getString(2));
				r.setEtapa_proyecto(rs.getString(3));
				r.setFecha_act_proyecto(rs.getString(4));
				r.setDepartamento_proyecto(rs.getString(5));
				r.setProvincia_proyecto(rs.getString(6));
				r.setDistrito_proyecto(rs.getString(7));
				r.setDireccion_proyecto(rs.getString(8));
				r.setDes_tiptrabajo(rs.getString(9));
				lista.add(r);
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
	public ArrayList<Reporte> reportePorCliente(String cod_cliente) {
		ArrayList<Reporte> lista = new ArrayList<Reporte>();
		ResultSet rs = null;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ReportePorCliente(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1, cod_cliente);
			rs = cs.executeQuery();
			while (rs.next()) {
				Reporte r = new Reporte();
				r.setNum_proyecto(rs.getString(1));
				r.setRazsoc_cliente(rs.getString(2));
				r.setEtapa_proyecto(rs.getString(3));
				r.setFecha_act_proyecto(rs.getString(4));
				r.setDepartamento_proyecto(rs.getString(5));
				r.setProvincia_proyecto(rs.getString(6));
				r.setDistrito_proyecto(rs.getString(7));
				r.setDireccion_proyecto(rs.getString(8));
				r.setDes_tiptrabajo(rs.getString(9));
				lista.add(r);
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
	public ArrayList<Reporte> reporteCliente() {
		ArrayList<Reporte> lista = new ArrayList<Reporte>();
		ResultSet rs = null;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ReporteCliente()}";
			cs = cn.prepareCall(sql);
			rs = cs.executeQuery();
			while (rs.next()) {
				Reporte r = new Reporte();
				r.setNum_proyecto(rs.getString(1));
				r.setRazsoc_cliente(rs.getString(2));
				r.setEtapa_proyecto(rs.getString(3));
				r.setFecha_act_proyecto(rs.getString(4));
				r.setDepartamento_proyecto(rs.getString(5));
				r.setProvincia_proyecto(rs.getString(6));
				r.setDistrito_proyecto(rs.getString(7));
				r.setDireccion_proyecto(rs.getString(8));
				r.setDes_tiptrabajo(rs.getString(9));
				lista.add(r);
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
	public ArrayList<Reporte> listaParticipado(String cod_trabajador) {
		ArrayList<Reporte> lista = new ArrayList<Reporte>();
		ResultSet rs = null;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ListarParticipado(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1,cod_trabajador);
			rs = cs.executeQuery();
			while (rs.next()) {
				Reporte r = new Reporte();
				r.setNum_proyecto(rs.getString(1));;
				r.setDepartamento_proyecto(rs.getString(2));
				r.setProvincia_proyecto(rs.getString(3));
				r.setDistrito_proyecto(rs.getString(4));
				r.setDireccion_proyecto(rs.getString(5));
				r.setFecha_reg_proyecto(rs.getString(6));
				r.setFecha_act_proyecto(rs.getString(7));
				r.setEtapa_proyecto(rs.getString(8));
				lista.add(r);
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
	public ArrayList<Reporte> listaParticipas(String cod_trabajador) {
		ArrayList<Reporte> lista = new ArrayList<Reporte>();
		ResultSet rs = null;
		Connection cn = null;
		CallableStatement cs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "{call usp_ListarParticipas(?)}";
			cs = cn.prepareCall(sql);
			cs.setString(1,cod_trabajador);
			rs = cs.executeQuery();
			while (rs.next()) {
				Reporte r = new Reporte();
				r.setNum_proyecto(rs.getString(1));;
				r.setDepartamento_proyecto(rs.getString(2));
				r.setProvincia_proyecto(rs.getString(3));
				r.setDistrito_proyecto(rs.getString(4));
				r.setDireccion_proyecto(rs.getString(5));
				r.setFecha_reg_proyecto(rs.getString(6));
				r.setFecha_act_proyecto(rs.getString(7));
				r.setEtapa_proyecto(rs.getString(8));
				lista.add(r);
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
}
