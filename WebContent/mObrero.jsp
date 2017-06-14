<!DOCTYPE>
<%@page import="beans.ProyectoDTO"%>
<%@page import="beans.TrabajadorDTO"%>
<%@page import="beans.TipoTrabajoDTO"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu Obrero</title>
</head>

<style>
.btn {
    border: center;
    color: white;
    padding: 14px 15px 15px;
    font-size: 16px;
    cursor: pointer;
}



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
		<h1>MENÚ OBRERO</h1>
		
		<h1>-------------------------------------------------------------</h1>


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