<%@page import="beans.ClienteDTO"%>
<%@taglib uri="WEB-INF/libreria.tld" prefix="libreria"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE">
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
		ClienteDTO c = (ClienteDTO)request.getAttribute("cli");
	%>
 <h1>Registro de Solicitud </h1>
	<hr>
	<fieldset style="width: 1100px; background-color:lightblue">
		
		<form action="GestionProducto" method="post">
			
			<input type="hidden" name="opcion" value="registro">  
			
			
			<table>
				<tr>
					<td><label>Cliente </label></td>
					<td><input name="txtCliente" placeholder="Ingrese Nombre del cliente" style="width: 460px"></td>
					<td><input type="submit" style="width: 160px" alt="" value="Buscar Cliente">
					</td>
				</tr>
				<tr>
					<td><label>Representante</label></td>
					<td><input name="txtRepresentante" placeholder="Ingrese nombre del representante"style="width: 550px" 
					maxlength="1" size="1"></td>
				</tr>
				<tr>
					<td><label>Tipo de Empresa</label></td>
					<td><input name="txtTipoEmpresa" placeholder="Ingrese el tipo de empresa "style="width: 550px"
					required="required" size="25"></td>
				</tr>
			
				<tr>
					<td><label>Estado de Solicitud</label></td>
					<td>
					<select name="cboTipo">
					<option value="0">Seleccione tipo</option>
					<option value="1">ACTIVO</option>
					<option value="2">NO ACTIVO</option>
					
				</select> 
				</td>
			    <td><label>Fecha de Registro</label></td>
					<td><input name="txtFecha" placeholder="Ingrese el tipo de empresa "style="width: 270px"
					required="required" size="12">
					</td>
					
				</tr>
				
					<tr>
					<td><label>Permisos de Solicitud</label></td>
					<td>
					<select name="cboTipo">
					<option value="0">Seleccione tipo</option>
					<option value="1">SI</option>
					<option value="2">NO</option>
					
				</select> 
				</td>
			
				
					<td><label>Fecha de Actualización</label></td>
					<td><input name="txtTipoEmpresa" placeholder="Ingrese el tipo de empresa "style="width: 270px"
					required="required" size="25">
					</td>
				</tr>
				<center>
				<tr>
					<td><input type="submit" value="Cancelar"></td>
					<td><input type="reset" value="Registrar"></td>
				
				</center>
          </tr>
			</table>
		</form>		
	</fieldset>


</body>
</html>