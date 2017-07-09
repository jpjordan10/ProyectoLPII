<!DOCTYPE html>
<%@page import="beans.TrabajadorDTO"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=10, maximum-scale=100, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrapValidator.js"></script>
</head>
<body>
	<div class="container">
		<% TrabajadorDTO t = (TrabajadorDTO) request.getAttribute("obj");%>
		<h1>Cambiar Datos Personales</h1>
		<form class="form-horizontal" action="trabajador?metodo=actualizad" id="id_form" method="post">
			<input type="text" name="user" value="${datos}" style="visibility: hidden;">
			<input type="hidden" name="codigo" value="<%=t.getCod_trabajador()%>">
			<input type="hidden" name="tipo" value="<%=t.getTipo_trabajador()%>">
			<hr>
			<br>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_nombre">Nombre</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_nombre" type="text" 
					name="nombre" value="<%=t.getNom_trabajador()%>"><br>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_apellidop">Apellido Paterno</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_apellidop" type="text" 
					name="apellidop" value="<%=t.getApep_trabajador()%>"><br>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_apellidom">Apellido Materno</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_apellidom" type="text" 
					name="apellidom" value="<%=t.getApem_trabajador()%>"><br>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_dni">Dni</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_dni" type="text" 
					name="dni" value="<%=t.getDni_trabajador()%>"><br>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_email">Email</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_email" type="text" 
					name="email" value="<%=t.getEmail_trabajador()%>"><br>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_telefono">Telefono</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_telefono" type="text" 
					name="telefono" value="<%=t.getTelefono_trabajador()%>"><br>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_departamento">Departamento</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_departamento" type="text" 
					name="departamento" value="<%=t.getDepartamento_trabajador()%>"><br>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_provincia">Provincia</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_provincia" type="text" 
					name="provincia" value="<%=t.getProvincia_trabajador()%>"><br>
				</div>	
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_distrito">Distrito</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_distrito" type="text" 
					name="distrito" value="<%=t.getDistrito_trabajador()%>"><br>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_direccion">Direccion</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_direccion" type="text" 
					name="direccion" value="<%=t.getDireccion_trabajador()%>"><br>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_password">Password</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_password" type="text" 
					name="password" value="<%=t.getPass_trabajador()%>"><br>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Cambiar</button>
					<button type="reset" class="btn btn-default">Cancelar</button>
				</div>

			</div>
			
			
		</form>
	</div>
</body>
</html>