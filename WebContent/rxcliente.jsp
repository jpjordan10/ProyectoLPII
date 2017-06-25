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
		<h1 align="center">REPORTE DE CLIENTES</h1>
		<br>
		<form action="" id="id_form">
			<div>
				<label>Codigo del Cliente</label>
				<select class="form-control">
					<option>Seleccione</option>
					<option value=0>C1000</option>
					<option value=1>C1001</option>
					<option value=2>C1002</option>
					<option value=3>C1003</option>
					
				</select>
			</div>
			
			<div>
				<label>Razon Social</label>
				<select class="form-control">
					<option>Seleccione</option>
					<option value=0>Empresa x</option>
					<option value=1>Empresa y</option>
					<option value=2>Empresa z</option>
					<option value=3>Empresa a</option>
					
				</select>
			</div>
			
			<br>
			<div class="form-group">
				<a class="btn btn-primary" href="reportecliente">Consultar</a>
			</div>
			<br>
			<display:table name="lista"> 
			</display:table>
		</form>
	</div>
</body>
</html>