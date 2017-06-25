<%@page import="beans.TipoTrabajoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<%@page import="beans.ClienteDTO"%>
<link rel="stylesheet" href="css/bootstrapValidator.css">

<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrapValidator.js"></script>
</head>

<body>
<div class="container">
		<h1 align="center">LISTADO DE TIPO POR TRABAJADOR</h1>
		<br>
		<form action="" id="id_form">
			<div>
				<label>Tipo de Trabajo</label>
				<select class="form-control">
					<option>Seleccione</option>
					<option value=0>Activo</option>
					<option value=1>Inactivo</option>
					
				</select>
			</div>
			<br>
			<div class="form-group">
				<a class="btn btn-primary" href="reporteTipoTrabajo">Consultar</a>
			</div>
			<br>
			<display:table name="lista"> 
			</display:table>
		</form>
	</div>
</body>
</html>