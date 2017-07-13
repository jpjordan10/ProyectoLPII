package etiquetas;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import beans.TipoTrabajoDTO;
import service.TipoTrabajoService;

public class ComboTipoTrabajo extends TagSupport {
	private static final long serialVersionUID = 1L;

	public int doStartTag() throws JspException {
		try {
			JspWriter out = pageContext.getOut();
			TipoTrabajoService ts = new TipoTrabajoService();
			ArrayList<TipoTrabajoDTO> lista = ts.listaTipoTrabajoAct();
			out.print("<select class='form-control' name='tipo' id='id_tipo'>");
			out.print("<option value='x'>Todos los Tipo de Trabajos</option>");
			for (TipoTrabajoDTO t : lista) {
				out.println("<option value='" + t.getCod_tiptrabajo() + "'>" + t.getDes_tiptrabajo() + "</option>");
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
