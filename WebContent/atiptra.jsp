<!DOCTYPE html>
<%@page import="beans.TipoTrabajoDTO"%>
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
		TipoTrabajoDTO t = (TipoTrabajoDTO)request.getAttribute("tipt");
	%>
		<h1>Actualizacion de Tipo de Trabajo</h1>
		<input type="hidden" name="codigo" value="<%=t.getCod_tiptrabajo()%>">
		<form action="tt" id="id_form">
			<input type="hidden" name="metodo" value="actualiza">
			<div class="form-group">
				<label class="control-label" for="id_descripcion">Descripcion</label>
				<input class="form-control" id="id_descripcion" type="text"
					name="descripcion" placeholder="Ingrese Descripcion"  value="<%=t.getDes_tiptrabajo()%>">
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary">Crea Tipo de
					Trabajo</button>
			</div>

		</form>
	</div>
</body>
</html>