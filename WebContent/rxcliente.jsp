<%@ taglib uri="WEB-INF/libreria.tld" prefix="libreria"%>
<!DOCTYPE html>
<%@page import="beans.Reporte"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">
<head>
<title>Reporte por Cliente</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<form class="form-horizontal" action="reporte" id="id_form" method="post">
		<input type="hidden" name="metodo" value="rxcliente">
			<h2>Reporte por Cliente</h2>
			<label class="control-label col-sm-2" for="id_tipo">Cliente:</label>
			<div class="col-sm-8">
				<libreria:dameCliente />
				<button type="submit" class="btn btn-default">Consultar</button>
			</div>
		</form>
	</div>
	<hr>
	<div class="container">
		<table class="table table-striped table-bordered nowrap">
			<thead>
				<tr>
					<th>Numº Proyecto</th>
					<th>Razon Social</th>
					<th>Etapa</th>
					<th>Fecha actualización</th>
					<th>Locación</th>
					<th>Tipo de Trabajo</th>
				</tr>
			</thead>
			<tbody>
				<%
					ArrayList<Reporte> lista = (ArrayList<Reporte>) request.getAttribute("milistado");
					if (lista != null) {
						for (Reporte r : lista) {
				%>
				<tr class="grilla_campo">
					<td><%=r.getNum_proyecto()%></td>
					<td><%=r.getRazsoc_cliente()%></td>
					<td><%=r.getEtapa_proyecto()%></td>
					<td><%=r.getFecha_act_proyecto()%></td>
					<td><%=r.getDepartamento_proyecto()+", "+r.getProvincia_proyecto()+", "+r.getDistrito_proyecto()+", "+r.getDireccion_proyecto()%></td>
					<td><%=r.getDes_tiptrabajo()%></td>
				</tr>
				<%
					}
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>
