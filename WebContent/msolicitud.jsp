<!DOCTYPE>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Reporte"%>
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

		<a class="btn btn-primary" href="soli?metodo=lista">Ver data</a> <a
			class="btn btn-primary" href="#">Generar Solicitud</a>
	</div>
	<br>
	<br>
	<div class="container">
		<table class="table table-striped table-bordered nowrap">
			<thead>
				<tr>
					<th>Nro Solicitud</th>
					<th>RUC</th>
					<th>Razón Social</th>
					<th>Representante</th>
					<th>Permisos</th>
					<th>Estado</th>
					<th>Fecha de Registro</th>
					<th>Fecha de Actualización</th>
					<th colspan="2">ACCIONES</th>
				</tr>
			</thead>
			<tbody>
				<%
					ArrayList<Reporte> lista = (ArrayList<Reporte>) request.getAttribute("data");
					if (lista != null) {
						for (Reporte x : lista) {
				%>
				<tr>
					<td><%=x.getNum_solicitud()%></td>
					<td><%=x.getRuc_cliente()%></td>
					<td><%=x.getRazsoc_cliente()%></td>
					<td><%=x.getRepresentante_cliente()%></td>
					<td><%=x.getPermisos_solicitud()%></td>
					<td><%=x.getEstado_solicitud()%></td>
					<td><%=x.getFecha_reg_solicitud()%></td>
					<td><%=x.getFecha_act_solicitud()%></td>
					<td><a href="#"> <img alt="Actualiza"
							src="images/edit.png">
					</a></td>
					<td><a
					href="soli?metodo=muestra&num=<%=x.getNum_solicitud()%>">
						<img alt="Muestra" src="images/lens.png">
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