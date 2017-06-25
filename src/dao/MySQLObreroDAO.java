package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import beans.Reporte;
import interfaces.ObreroDAO;
import utils.MySQLConexion;

public class MySQLObreroDAO implements ObreroDAO {

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
			cs.setString(1, cod_trabajador);
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
			cs.setString(1, cod_trabajador);
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
