<!DOCTYPE>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.SolicitudDTO"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">

<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrapValidator.js"></script>
<title>Menu Solicitud</title>
</head>
<body>
<div class="container">
		<h1>Solicitudes</h1>

		<a class="btn btn-primary" href="?metodo=lista">Ver data</a>
		<a class="btn btn-primary" href="registroSolicitud.jsp">Nueva Solicitud</a>
	</div>

	<br>
	<br>
	<div class="container">
		<table class="table">

			<tr>
				<th>Nro Solicitud</th>
				<th>Cliente</th>
				<th>Fecha Registro</th>
				<th>Estado</th>
				<th>Permisos</th>
				<th>Fecha de Actualización</th>
				<th>Acciones</th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
			</tr>
			<%
				ArrayList<SolicitudDTO> lista = (ArrayList<SolicitudDTO>) request.getAttribute("data");
				if (lista != null) {
					for (SolicitudDTO t : lista) {
			%>
			<tr class="grilla_campo">
				<td><%=t.getNum_solicitud()%></td>
				<td><%=t.getCod_cliente()%></td>
				<td><%=t.getFecha_reg_solicitud()%></td>
				<td><%=t.getEstado_solicitud()%></td>
				<td><%=t.getPermisos_solicitud()%></td>
				<td><%=t.getFecha_act_solicitud()%></td>
				
				<td><a
					href="solicitudes?metodo=desactiva&cod=<%=t.getNum_solicitud()%>"> <img
						alt="Desactiva" src="images/Delete.gif">
				</a></td>
				<td><a href="solicitudes?metodo=desactiva&cod=<%=t.getNum_solicitud()%>">
						<img alt="Actualiza" src="images/Edit.gif">
				</a></td>
				<td><a href="solicitudes?metodo=desactiva&cod=<%=t.getNum_solicitud()%>">
						<img alt="Activa" src="images/Edit.gif">
				</a></td>
				<td><a href="solicitudes?metodo=desactiva&cod=<%=t.getNum_solicitud()%>">
						<img alt="Elimina" src="images/Edit.gif">
				</a></td>
			</tr>
			<%
			

				}
				}
			%>

		</table>
	</div>


</body>
</html>