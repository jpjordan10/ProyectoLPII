package etiquetas;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import beans.ClienteDTO;
import service.ClienteService;

public class ComboCliente extends TagSupport {
	private static final long serialVersionUID = 1L;

	public int doStartTag() throws JspException {
		try {
			JspWriter out = pageContext.getOut();
			ClienteService ts = new ClienteService();
			ArrayList<ClienteDTO> lista = ts.listaCliente();
			out.print("<select class='form-control' name='tipo' id='id_tipo'>");
			out.println("<option value='x'>Seleccione Cliente</option>");
			for (ClienteDTO t : lista) {
				out.println("<option value='" + t.getCod_cliente() + "'>" + t.getRazsoc_cliente() + "</option>");
			}
			out.print("</select>");
		} catch (IOException e) {
			throw new JspException("Error: " + e.getMessage());
		}
		return SKIP_BODY;
	}

	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}
}
