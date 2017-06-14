<!DOCTYPE html>
<%@page import="beans.TrabajadorDTO"%>
<%@page import="java.util.ArrayList"%>
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
		<h1>Mantenimiento de Trabajadores</h1>

		<a class="btn btn-primary" href="trabajador?metodo=lista">Ver data</a>
		<a class="btn btn-primary" href="itrabajador.jsp">Registra</a>
	</div>

	<br>
	<br>
	<div class="container">
		<table class="table">
			<tr>
				<th>Codigo</th>
				<th>Apellidos y Nombres</th>
				<th>Localidad</th>
				<th>Dirección</th>
				<th>Tipo</th>
				<th>Estado</th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
			</tr>
			<%
				ArrayList<TrabajadorDTO> lista = (ArrayList<TrabajadorDTO>) request.getAttribute("data");
				if (lista != null) {
					for (TrabajadorDTO t : lista) {
			%>
			<tr class="grilla_campo">
				<td><%=t.getCod_trabajador()%></td>
				<td><%=t.getApep_trabajador() + " " + t.getApem_trabajador() + ", " + t.getNom_trabajador()%></td>
				<td><%=t.getDepartamento_trabajador() + ", " + t.getProvincia_trabajador() + ", "
							+ t.getDistrito_trabajador()%></td>
				<td><%=t.getDireccion_trabajador()%></td>
				<td><%=t.getTipo_trabajador()%></td>
				<td><%=t.getEstado_trabajador()%></td>
				<td><a
					href="trabajador?metodo=busca&cod=<%=t.getCod_trabajador()%>">
						<img alt="Actualiza" src="images/edit.png">
				</a></td>
				<td><a
					href="trabajador?metodo=muestra&cod=<%=t.getCod_trabajador()%>">
						<img alt="Muestra" src="images/lens.png">
				</a></td>
				<td><a
					href="trabajador?metodo=desactiva&cod=<%=t.getCod_trabajador()%>">
						<img alt="Desactiva" src="images/inactive.png">
				</a></td>
				<td><a
					href="trabajador?metodo=activa&cod=<%=t.getCod_trabajador()%>">
						<img alt="Activa" src="images/activate.png">
				</a></td>
				<td><a
					href="trabajador?metodo=elimina&cod=<%=t.getCod_trabajador()%>">
						<img alt="Elimina" src="images/delete.png">
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