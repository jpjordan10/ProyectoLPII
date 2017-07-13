<!DOCTYPE>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Reporte"%>
<html lang="esS">
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
</head>
<body>
	<div class="container">
		<h1>Menu de Proyectos</h1>
		<a class="btn btn-primary" href="proy?metodo=lista">Ver data</a> <a
			class="btn btn-primary" href="gproyecto.jsp">Registrar Proyecto</a>
	</div>
	<br>
	<br>
	<div class="container">
		<table class="table table-striped table-bordered nowrap">
			<thead>
				<tr>
					<th>Nro Proyecto</th>
					<th>Razón Social</th>
					<th>Fecha de Registro</th>
					<th>Lugar</th>
					<th>Trabajo a realizar</th>
					<th>Etapa</th>
					<th>Costo</th>
					<th>Meses de trabajo</th>
					<th>Fecha de Actualizacion</th>
					<th colspan="2">Acciones</th>
				</tr>
			</thead>
			<tbody>
				<%
					ArrayList<Reporte> lista = (ArrayList<Reporte>) request.getAttribute("data");
					if (lista != null) {
						for (Reporte x : lista) {
				%>
				<tr>
					<td><%=x.getNum_proyecto()%></td>
					<td><%=x.getRazsoc_cliente()%></td>
					<td><%=x.getFecha_reg_proyecto()%></td>
					<td><%=x.getDepartamento_proyecto()+", "+x.getProvincia_proyecto()+", "+x.getDistrito_proyecto()+", "+x.getDireccion_proyecto()%></td>
					<td><%=x.getDes_tiptrabajo()%></td>
					<td><%=x.getEtapa_proyecto()%></td>
					<td><%=x.getCosto_proyecto()%></td>
					<td><%=x.getCan_mes_proyecto()%></td>
					<td><%=x.getFecha_act_proyecto()%></td>
					<td><a
						href="proy?metodo=busca&num=<%=x.getNum_proyecto()%>"> <img
							alt="Actualiza" src="images/edit.png">
					</a></td>
					<td><a
						href="proy?metodo=muestra&num=<%=x.getNum_proyecto()%>"> <img
							alt="Muestra" src="images/lens.png">
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