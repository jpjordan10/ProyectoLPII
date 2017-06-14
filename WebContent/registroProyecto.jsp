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
<%@page import="beans.ClienteDTO"%>
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
 <h1>Registro de Proyecto </h1>
	<hr>
	<fieldset style="width: 1170px ; background-color:lightblue">
		
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
					<td><label>Representante</label></td><br>
					<td><input name="txtRepresentante" placeholder="Ingrese nombre del representante"style="width:600px" 
					maxlength="1" size="1"></td>
				</tr>
				<tr>
					<td><label>Tipo de Empresa</label></td><br>
					<td><input name="txtTipoEmpresa" placeholder="Ingrese el tipo de empresa "style="width: 600px"
					required="required" size="1"></td>
				</tr>
			<tr>
					<td><label>Tipo de Trabajo</label></td>
					<td>
					<select name="cboTipo">
					<option value="0">Seleccione tipo</option>
					<option value="1">GESTOR ARQUEOLOGO</option>
					<option value="2">ARQUEOLOGO</option>
					
				</select> 
				</td>
			   <td><label>Etapa de Proyecto</label></td>
					<td>
					<select name="cboEtapa">
					<option value="0">Seleccione tipo</option>
					<option value="1">primera</option>
					<option value="2">segunda</option>
					
				</select> 
					</td>
					
				</tr>
					<tr>
					<td><label>Costo de Trabajo </label></td>
					<td><input name="txtCostoTrabajo" placeholder="Ingrese el costo de trabajo"
					required="required" size="25"></td>
					
					<td><label>Meses de Trabajo </label></td>
					<td><input name="txtMesesTrabajo" placeholder="Ingrese los meses que trabajo"
					required="required" size="25"></td>
				</tr>
						<tr>
					<td><label>Fecha de Registro </label></td>
					<td><input name="txtFechaRegistro" placeholder="Ingrese la Fecha de Registro"
					required="required" size="25"></td>
					
					<td><label>Fecha de Actualización</label></td>
					<td><input name="txtFechaRegistro" placeholder="Ingrese la Fecha de Actualización"
					required="required" size="25"></td>
				</tr>
						<tr>
					<td><label>Aqueologo Encargado </label></td>
					<td><input name="txtAqueologoEncargado" placeholder=""
					required="required" size="25">
					<input type="submit" style="width: 170px"  value="Buscar">
					</td>
					
					<tr>
					<td><label>Bonificación </label></td>
					<td><input name="txtBonificacion" placeholder=""
					required="required" size="25">
					
					</td>
						<tr>
					<td><label>Trabajador </label></td>
					<td><input name="txtTrabajador" placeholder=""
					required="required" size="25">
					<input type="submit" style="width: 170px"  value="Buscar trabajador">
					</td>
					
			</tr>
          
  <table class="table table-bordered" >
    <thead>
      <tr>
        <th>Codigo</th>
        <th>Apellidos y Nombres</th>
        <th>Bonificación del Mes</th>
         <th>Bonificación Total</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>P1000</td>
        <td>Ana Cecilia</td>
        <td>1500.00</td>
        <td>1500.00</td>
      </tr>
      <tr>
        <td>P2000</td>
        <td>Ana Karina</td>
        <td>1800.00</td>
        <td>1500.00</td>
      </tr>
      <tr>
        <td>P4000</td>
        <td>Ana Barbara/td>
        <td>1900.00</td>
        <td>1500.00</td>
      </tr>
    </tbody>
  </table>
</div>


				<center>
				<tr>
					<td><input type="submit" value="Cancelar"></td>
					<td><input type="reset" value="Registrar Proyecto"></td>
				</tr>
				</center>
	

		</form>		
	</fieldset>
</body>
</html>