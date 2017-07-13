<%@page import="beans.ClienteDTO"%>
<!DOCTYPE html>
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
		<%
			ClienteDTO c = (ClienteDTO) request.getAttribute("cli");
		%>
		<h1>Datos de Cliente</h1>
		<form class="form-horizontal" action="cliente" id="id_form" method="post">
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_codigo">Código:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_codigo" type="text"
						value="<%=c.getCod_cliente()%>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_razon">Razon
					Social:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_razon" type="text"
						value="<%=c.getRazsoc_cliente()%>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_ruc">RUC:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_ruc" type="text"
						value="<%=c.getRuc_cliente()%>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_email">E-mail:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_email" type="text"
						value="<%=c.getEmail_cliente()%>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_telefono">Telefono:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_telefono" type="text"
						value="<%=c.getTelefono_cliente()%>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_departamento">Departamento:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_departamento" type="text"
						value="<%=c.getDepartamento_cliente()%>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_provincia">Provincia:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_provincia" type="text"
						value="<%=c.getProvincia_cliente()%>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_distrito">Distrito:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_distrito" type="text"
						name="distrito" placeholder="Ingrese Distrito"
						value="<%=c.getDistrito_cliente()%>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_direccion">Direccion:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_direccion" type="text"
						value="<%=c.getDireccion_cliente()%>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_tipo">Tipo:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_tipo" type="text"
						value="<%=c.getTipo_cliente()%>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_representante">Representante:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_representante" type="text"
						value="<%=c.getRepresentante_cliente()%>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_estado">Estado:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_estado" type="text"
						value="<%=c.getEstado_cliente()%>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_fecha">Fecha de Registro:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_fecha" type="text"
						value="<%=c.getFecha_reg_cliente()%>" disabled>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<a class="btn btn-default" href="cliente?metodo=lista">Cancelar</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>