<!DOCTYPE html>
<html lang="esS">
<%@page import="beans.TipoTrabajoDTO"%>
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
			TipoTrabajoDTO t = (TipoTrabajoDTO) request.getAttribute("tipt");
		%>
		<h1>Datos del Tipo de Trabajo</h1>
		<form class="form-horizontal" action="tt" id="id_form">
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_codigo">Código:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_codigo" type="text"
						name="codigo" value="<%=t.getCod_tiptrabajo()%>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_descripcion">Descripcion:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_descripcion" type="text"
						name="descripcion" value="<%=t.getDes_tiptrabajo()%>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_estado">Estado:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_estado" type="text"
						name="estado" value="<%=t.getEstado_tiptrabajo()%>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_fecha">Fecha
					de Registro:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_fecha" type="text" name="fecha"
						value="<%=t.getFecha_reg_tiptrabajo()%>" disabled>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="reset" class="btn btn-default" name="metodo"
						value="lista">Cancelar</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>