package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Reporte;
import service.ObreroService;


@WebServlet("/obrero")
public class ServletObrero extends HttpServlet {
	private static final long serialVersionUID = 1L;
       ObreroService os = new ObreroService();
       
       protected void service(HttpServletRequest request, HttpServletResponse response)
   			throws ServletException, IOException {
    	   
    	   String metodo = request.getParameter("metodo");
    	   
    	   if (metodo.equals("Oparticipas")){
    		   obreroParticipas(request, response);
    	   } else if(metodo.equals("Oparticipados")){
    		   obreroParticipados(request, response);
    	   }
    	   
       }

	private void obreroParticipados(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cod = request.getParameter("user");
		ArrayList<Reporte> listado = os.listaParticipado(cod);
		request.setAttribute("participados", listado);
		request.getRequestDispatcher("poParticipados.jsp").forward(request, response);
	}

	private void obreroParticipas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cod = request.getParameter("user");
		ArrayList<Reporte> listado = os.listaParticipas(cod);
		request.setAttribute("participas", listado);
		request.getRequestDispatcher("poParticipas.jsp").forward(request, response);
	}
    

}
