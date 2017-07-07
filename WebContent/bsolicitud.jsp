<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">

<link href="css/displaytag.css" rel="stylesheet" type="text/css" >
<link href="css/screen.css" rel="stylesheet" type="text/css" media="screen">

<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrapValidator.js"></script>
</head>
<body>
	<div class="container">
	 	<display:table name="${lstpendientes}" decorator="decorator.Wrapper">
	 		<display:column property="num_solicitud" title="Numero de Solicitud"/>
	 		<display:column property="ruc_cliente" title="Ruc"/>
	 		<display:column property="razsoc_cliente" title="Razon Social"/>
	 		<display:column property="representante_cliente" title="Representante"/>
	 		<display:column property="tipo_cliente" title="Tipo de cliente"/>
	 		<display:column property="estado_solicitud" title="Estado"/>
	 		<display:column property="seleccionas"/>
	 	</display:table>
	</div>
</body>
</html>