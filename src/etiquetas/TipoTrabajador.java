package etiquetas;

import java.io.IOException;
import javax.servlet.jsp.tagext.TagSupport;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;

public class TipoTrabajador extends TagSupport {
	public int doStartTag() throws JspException {
		try {
			JspWriter out = pageContext.getOut();
			out.println("<option value='0'>Seleccione tipo de trabajador</option>");
			out.println("<option value='ARQUEOLOGO'>ARQUEOLOGO</option>");
			out.println("<option value='OBRERO'>OBRERO</option>");
		} catch (IOException e) {
			throw new JspException("Error: " + e.getMessage());
		}
		return SKIP_BODY;
	}
	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}
}
