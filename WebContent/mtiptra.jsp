<!DOCTYPE html>
<%@page import="beans.TipoTrabajoDTO"%>
<%@page import="java.util.ArrayList"%>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">
<title>Menu Tipo Trabajo</title>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrapValidator.js"></script>
</head>
<body>
	<div class="container">
		<a href="mgestor.jsp"><img alt="" src="images/return.png"
			width="25px"> Regresar al Menu</a>
		<h1>Menu de Tipo de Trabajos</h1>
		<a class="btn btn-primary" href="tt?metodo=lista">Ver data</a> <a
			class="btn btn-primary" href="itiptra.jsp">Registrar</a>
	</div>
	<br>
	<br>
	<div class="container">
		<table class="table table-striped table-bordered nowrap">
			<thead>
				<tr>
					<th>Codigo</th>
					<th>Descripcion</th>
					<th>Estado</th>
					<th colspan="5" align="center">Acciones</th>
				</tr>
			</thead>
			<tbody>
				<%
					ArrayList<TipoTrabajoDTO> lista = (ArrayList<TipoTrabajoDTO>) request.getAttribute("data");
					if (lista != null) {
						for (TipoTrabajoDTO t : lista) {
				%>
				<tr class="grilla_campo">
					<td><%=t.getCod_tiptrabajo()%></td>
					<td><%=t.getDes_tiptrabajo()%></td>
					<td><%=t.getEstado_tiptrabajo()%></td>
					<td><a href="tt?metodo=busca&cod=<%=t.getCod_tiptrabajo()%>">
							<img alt="Actualiza" src="images/edit.png">
					</a></td>
					<td><a href="tt?metodo=muestra&cod=<%=t.getCod_tiptrabajo()%>">
							<img alt="Muestra" src="images/lens.png">
					</a></td>
					<td><a
						href="tt?metodo=desactiva&cod=<%=t.getCod_tiptrabajo()%>"> <img
							alt="Desactiva" src="images/inactive.png">
					</a></td>
					<td><a href="tt?metodo=activa&cod=<%=t.getCod_tiptrabajo()%>">
							<img alt="Activa" src="images/activate.png">
					</a></td>
					<td><a href="tt?metodo=elimina&cod=<%=t.getCod_tiptrabajo()%>">
							<img alt="Elimina" src="images/delete.png">
					</a></td>
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