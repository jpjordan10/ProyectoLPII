<!DOCTYPE html>
<%@page import="beans.ClienteDTO"%>
<%@page import="java.util.ArrayList"%>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">
<title>Menu de cliente</title>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrapValidator.js"></script>
</head>
<body>
	<div class="container">
	<a href="mgestor.jsp"><img alt="" src="images/return.png" width="25px"> Regresar al Menu</a>
		<h1>Menu de Clientes</h1>
		<a class="btn btn-primary" href="cliente?metodo=lista">Ver data</a> <a
			class="btn btn-primary" href="icliente.jsp">Registra</a>
	</div>
	<br>
	<br>
	<div class="container">
		<table class="table table-striped table-bordered nowrap">
			<thead>
				<tr>
					<th>Codigo</th>
					<th>Razon Social</th>
					<th>RUC</th>
					<th>Localidad</th>
					<th>Dirección</th>
					<th>Tipo</th>
					<th>Representante</th>
					<th>Estado</th>
					<th colspan="5" align="right">Acciones</th>
				</tr>
			</thead>
			<tbody>
				<%
					ArrayList<ClienteDTO> lista = (ArrayList<ClienteDTO>) request.getAttribute("data");
					if (lista != null) {
						for (ClienteDTO c : lista) {
				%>
				<tr class="grilla_campo">
					<td><%=c.getCod_cliente()%></td>
					<td><%=c.getRazsoc_cliente()%></td>
					<td><%=c.getRuc_cliente()%></td>
					<td><%=c.getDepartamento_cliente() + ", " + c.getProvincia_cliente() + ", "
							+ c.getDistrito_cliente()%></td>
					<td><%=c.getDireccion_cliente()%></td>
					<td><%=c.getTipo_cliente()%></td>
					<td><%=c.getRepresentante_cliente()%></td>
					<td><%=c.getEstado_cliente()%></td>
					<td><a href="cliente?metodo=busca&cod=<%=c.getCod_cliente()%>">
							<img alt="Actualiza" src="images/edit.png">
					</a></td>
					<td><a
						href="cliente?metodo=muestra&cod=<%=c.getCod_cliente()%>"> <img
							alt="Muestra" src="images/lens.png">
					</a></td>
					<td><a
						href="cliente?metodo=desactiva&cod=<%=c.getCod_cliente()%>"> <img
							alt="Desactiva" src="images/inactive.png">
					</a></td>
					<td><a
						href="cliente?metodo=activa&cod=<%=c.getCod_cliente()%>"> <img
							alt="Activa" src="images/activate.png">
					</a></td>
					<td><a
						href="cliente?metodo=elimina&cod=<%=c.getCod_cliente()%>"> <img
							alt="Elimina" src="images/delete.png">
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