package etiquetas;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class TipoCliente extends TagSupport{
	public int doStartTag() throws JspException {
		try {
			JspWriter out = pageContext.getOut();
			out.println("<option value='0'>Seleccione tipo de cliente</option>");
			out.println("<option value='MINERO'>MINERO</option>");
			out.println("<option value='PETROLERO'>PETROLERO</option>");
			out.println("<option value='GAS'>GAS</option>");
			out.println("<option value='CONSTRUCTOR'>CONSTRUCTOR</option>");
			out.println("<option value='MUNICIPAL'>MUNICIPAL</option>");
			out.println("<option value='MINISTERIO'>MINISTERIO</option>");
		} catch (IOException e) {
			throw new JspException("Error: " + e.getMessage());
		}
		return SKIP_BODY;
	}

	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}
}
