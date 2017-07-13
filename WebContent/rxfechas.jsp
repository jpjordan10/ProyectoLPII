<!DOCTYPE html>
<%@page import="beans.Reporte"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">
<head>
<title>Reporte por Rango de Fechas</title>
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
		<input type="hidden" name="metodo" value="rxfechas">
			<h2>Reporte por Fechas</h2>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_fi">Primera Fecha:</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_fi" type="text" name="fi"
						placeholder="Ingrese una fecha">
				</div>
				<label class="control-label col-sm-2" for="id_ff">Segunda Fecha:</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_ff" type="text" name="ff"
						placeholder="Ingrese una fecha">
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="col-sm-8">
				<a href="mgestor.jsp" class="btn btn-default">Cancelar</a>
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
					<th>Fecha registro</th>
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
					<td><%=r.getFecha_reg_proyecto()%></td>
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
