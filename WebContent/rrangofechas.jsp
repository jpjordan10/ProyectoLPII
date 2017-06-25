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
		<h1 align="center">REPORTE DE RANGO DE FECHAS</h1>
		<br>
		<form action="" id="id_form">
		
			<div>
				<label>Fecha De Registro de Solicitud </label>
				<input type="text" contenteditable="false" class="form-control" name="fecha_reg_solicitud" value="19-06-2017">
			</div>
			<br>
			<div>
			<label>Fecha de Actualizacion de Solicitud </label>
			<input type="text" contendeditable="false" class="form-control" name="fecha_act_solicitud" value="19-06-2017"> 
			</div>
			
			<br>
			<div class="form-group">
				<a class="btn btn-primary" href="lista">Consultar</a>
			</div>
			<br>
			<display:table name="lista"> 
			</display:table>
		</form>
	</div>
</body>
</html>
</html>