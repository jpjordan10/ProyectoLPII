<%@ taglib uri="WEB-INF/libreria.tld" prefix="libreria"%>
<%@page import="beans.ClienteDTO"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Generar Solicitud</h2>
		<hr>
		<form class="form-horizontal" action="soli" id="id_form" method="post">
			<input type="hidden" name="metodo" value="genera">
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<div class="col-sm-10">
					<h3>Datos de la Solicitud</h3>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_permisos">Permisos
					de Solicitud</label>
				<div class="col-sm-3">
					<input class="form-control" type="text" placeholder="PENDIENTES"
						disabled>
				</div>
				<label class="control-label col-sm-2" for="id_estado">Estado
					de Solicitud</label>
				<div class="col-sm-3">
					<input class="form-control" type="text" placeholder="PENDIENTES"
						disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_fechar">Fecha
					de Registro:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<libreria:dameFecha/>" disabled>
				</div>
				<label class="control-label col-sm-2" for="id_fechaa">Fecha
					de Actualizacion:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<libreria:dameFecha/>" disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-10">
					<input type="hidden" class="form-control" id="id_fechar"
						name="fechar" value="<libreria:dameFecha/>"> <input
						type="hidden" class="form-control" id="id_fechaa" name="fechaa"
						value="<libreria:dameFecha/>"> <input type="hidden"
						class="form-control" id="id_permisos" name="permiso"
						value="PENDIENTES"> <input type="hidden"
						class="form-control" id="id_estado" name="estado"
						value="PENDIENTE">
				</div>
			</div>
			<hr>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<div class="col-sm-10">
					<h3>Datos del Cliente</h3>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<hr>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_codigocli">Codigo
					de Cliente:</label>
				<div class="col-sm-6">
					<input class="form-control" id="id_codigocli" type="text" placeholder="Codigo de Cliente" value="${param.q}" disabled>
						<input class="form-control" id="id_codigocli" type="hidden"
						name="codcli" value="${param.q}">
				</div>
				<div class="col-sm-2">
						<a class="btn btn-default btn-block"
						href="cliente?metodo=listaclientemodal1">Buscar Cliente</a>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_razon">Razon
					Social:</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_razon" type="text" name="razon"
						placeholder="Razon Social de la empresa" value="${param.w}" disabled>
				</div>
				<label class="control-label col-sm-2" for="id_ruc">RUC de la
					empresa:</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_ruc" type="text" name="ruc"
						placeholder="Ruc de la empresa" value="${param.r}" disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_tipo">Tipo de
					Cliente</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_tipo" type="text" name="tipo"
						placeholder="Tipo de cliente" value="${param.t}" disabled>
				</div>
				<label class="control-label col-sm-2" for="id_rep">Representante:</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_rep" type="text" name="rep"
						placeholder="Representante de la empresa" value="${param.e}" disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<hr>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<a class="btn btn-default" href="soli?metodo=lista">Cancelar</a>
					<button type="submit" class="btn btn-default">Registrar</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>