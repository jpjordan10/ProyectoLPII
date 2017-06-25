package decorator;

import beans.ClienteDTO;

import org.displaytag.decorator.TableDecorator;

public class Wrapper extends TableDecorator {
	public String getSelecciona(){
		ClienteDTO c = (ClienteDTO) getCurrentRowObject();
		String k = c.getCod_cliente();
		String r = c.getRazsoc_cliente();
		String l = c.getRepresentante_cliente();
		String p = c.getRuc_cliente();
		String o = c.getTipo_cliente();
		return "<a href='gsolicitud.jsp?k="+k+"&r="+r+"&l="+l+"&p="+p+"&o="+o+"'><img src='images/plus.png' alt=''></a>";
	}
}
