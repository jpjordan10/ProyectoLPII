package etiquetas;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class EtapaTag extends TagSupport {
	private static final long serialVersionUID = 1L;
	public int doStartTag() throws JspException {
		try {
			JspWriter out = pageContext.getOut();
			out.print("<select class='form-control' name='etapa' id='id_etapa'>");
			out.print("<option value='PRIMERA'>PRIMERA</option>");
			out.print("<option value='SEGUNDA'>SEGUNDA</option>");
			out.print("<option value='TERCERA'>TERCERA</option>");
			out.print("<option value='CUARTA'>CUARTA</option>");
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