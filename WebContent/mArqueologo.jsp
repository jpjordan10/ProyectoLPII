<!DOCTYPE>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.ProyectoDTO"%>
<%@page import="beans.TrabajadorDTO"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu Arqueologo</title>
</head>

<style>
.btn {
    border: center;
    color: white;
    padding: 14px 15px 15px;
    font-size: 16px;
    cursor: pointer;
}

.success {background-color: #5882FA;} 
.success:hover {background-color: #5882FA;}

.info {background-color: #5882FA;} 
.info:hover {background: #5882FA;}

.warning {background-color: #5882FA;} 
.warning:hover {background: #5882FA;}

.danger {background-color: #5882FA;}  
.danger:hover {background: #5882FA;}

.default {background-color: #5882FA; color: black;}  
.default:hover {background: #5882FA;}
</style>

</head>
<body>


<div class="container">
		<h1>MENÚ ARQUEOLOGO</h1>
		
		<h1>-------------------------------------------------------------</h1>

<button class="btn success" href="mtrabajador.jsp">Proyectos que dirigiste</button>
<button class="btn info" href="mtrabajador.jsp">Proyectos Dirigidos</button>
<button class="btn warning" href="mtrabajador.jsp">Proyectos en los que participas</button>
<button class="btn danger" href="mtrabajador.jsp">Proyecto participados</button>


</div>

	
	<br>
	<br>
	<div class="container">
		<table class="table">

			<tr>
				<th>Nro Proyecto</th>
				<th>Localidad</th>
				<th>Fecha de Inicio</th>
				<th>Fecha Final</th>
				<th>Estado</th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
			</tr>
			</table>
			</div>

</body>
</html>