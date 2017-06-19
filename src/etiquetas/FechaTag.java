package etiquetas;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class FechaTag extends TagSupport {
	private static final long serialVersionUID = 1L;
	public int doStartTag() throws JspException {
		try {
			JspWriter out = pageContext.getOut();
			SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
			Date fecha = new Date();
			out.println(sdf.format(fecha));
		} catch (IOException e) {
			throw new JspException("Error: " + e.getMessage());
		}
		return SKIP_BODY;
	}

	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}
}
