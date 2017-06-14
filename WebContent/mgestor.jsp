<!DOCTYPE html>
</body>
<html>
<head>
<title>Menu gestor</title>
</head>
 <h1>MENÚ GESTOR</h1>
	<hr>
	
	<fieldset style="width: 750px;background-color:white">
<style>
.dropbutton {background-color:blue; color:black; padding:20px; font-size:10px; border:center; cursor:pointer; }
.dropdowndiv {position:relative; display:inline-block;}
.dropdownitem {display:none; position:absolute; background-color:darkblue; min-width:160px; box-shadow:0px 8px 16px 0px blue;}
.dropdownitem a {color:white; padding: 12px; 16px; text-decoration:none; display:block;}
.dropdowndiv:hover .dropdownitem {display:block;}
.dropdownitem a:hover {background-color:gray;}
.dropdowndiv:hover .dropbutton {background-color:darkgray;}
</style>

<body>

<div class="dropdowndiv">
<button class="dropbutton"><img src="images/mantenimientos.gif" width="70px" height="80px alt="" >MANTENIMIENTOS</button>
<div class="dropdownitem">
<a href="mClientes.jsp">CLIENTE</a>
<a href="mtrabajador.jsp">TRABAJADOR</a>
<a href="mtiptra.jsp">TIPO DE TRABAJADOR</a>
</div>
</div>


<div class="dropdowndiv">
<button class="dropbutton"><img src="images/solicitud.gif" width="70px" height="80px alt="" >SOLICITUDES</button>
<div class="dropdownitem">
<a href="menuSolicitud.jsp">SOLICITUDES</a>
<a href="registroSolicitud.jsp">REGISTRAR SOLICITUD</a>
<a href="">3rd Link</a>
</div>
</div>

<div class="dropdowndiv">
<button class="dropbutton"><img src="images/proyectos.gif" width="70px" height="80px alt="" >PROYECTOS</button>
<div class="dropdownitem">
<a href="mProyecto.jsp">PROYECTO</a>
<a href="registroProyecto.jsp">REGISTRAR PROYECTO</a>
<a href="">3rd Link</a>
</div>
</div>

<div class="dropdowndiv">
<button class="dropbutton"><img src="images/reporte.gif" width="70px" height="80px alt="" >REPORTES</button>
<div class="dropdownitem">
<a href="mArqueologo.jsp">ARQUEOLOGO</a>
<a href="mObrero.jsp">OBRERO</a>
<a href="">3rd Link</a>
</div>
</div>

</body>
</html>