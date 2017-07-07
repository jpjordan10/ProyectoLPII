package decorator;

import beans.ClienteDTO;
import beans.Reporte;
import beans.TrabajadorDTO;

import org.displaytag.decorator.TableDecorator;

public class Wrapper extends TableDecorator {
	public String getSelecciona(){
		ClienteDTO c = (ClienteDTO) getCurrentRowObject();
		String q = c.getCod_cliente();
		String w = c.getRazsoc_cliente();
		String e = c.getRepresentante_cliente();
		String r = c.getRuc_cliente();
		String t = c.getTipo_cliente();
		return "<a href='gsolicitud.jsp?q="+q+"&w="+w+"&e="+e+"&r="+r+"&t="+t+"'><img src='images/plus.png' alt=''></a>";
	}
	public String getSeleccionas(){
		Reporte x = (Reporte) getCurrentRowObject();
		String y = x.getNum_solicitud();
		String u = x.getRuc_cliente();
		String i = x.getRazsoc_cliente();
		String o = x.getRepresentante_cliente();
		String p = x.getTipo_cliente();
		return "<a href='gproyecto.jsp?y="+y+"&u="+u+"&i="+i+"&o="+o+"&p="+p+"'><img src='images/plus.png' alt=''></a>";
	}
	public String getSeleccionarq(){
		TrabajadorDTO x = (TrabajadorDTO) getCurrentRowObject();
		String a = x.getCod_trabajador();
		String s = x.getNom_trabajador();
		String d = x.getApep_trabajador();
		String f = x.getApem_trabajador();
		String g = x.getTipo_trabajador();
		return "<a href='gproyecto.jsp?a="+a+"&s="+s+"&d="+d+"&f="+f+"&g="+g+"'><img src='images/plus.png' alt=''></a>";
	}
}
