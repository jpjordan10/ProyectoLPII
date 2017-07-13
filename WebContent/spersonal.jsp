<%@ taglib uri="WEB-INF/libreria.tld" prefix="libreria"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Seleccion de Personal</title>
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
		<h2>Seleccion de Personal</h2>
		<hr>
		<form class="form-horizontal" action="#" id="id_form" method="post">
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<div class="col-sm-10">
					<h3>Datos del Proyecto</h3>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<hr>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_numproy">Numero de Proyecto:</label>
				<div class="col-sm-6">
					<input class="form-control" id="id_numproy" type="text" placeholder="Numero de Proyecto" disabled>
					<input class="form-control" id="id_numproy" type="hidden" name="numproy">
				</div>
				<div class="col-sm-2">
					<a class="btn btn-default btn-block" href="#">Buscar Proyecto</a>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_razon">Razon Social:</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_razon" type="text" name="razon"
						placeholder="Razon Social de la empresa" disabled>
				</div>
				<label class="control-label col-sm-2" for="id_trab">Trabajo a realizar:</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_trab" type="text" placeholder="Trabajo a realizar" disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_meses">Meses de Trabajo</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_meses" type="text" placeholder="Meses de Trabajo" disabled>
					<input class="form-control" id="id_meses" type="hidden" name="meses">
				</div>
				<label class="control-label col-sm-2" for="id_fecha">Fecha:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text" value="<libreria:dameFecha/>" disabled>
					<input class="form-control" type="hidden" value="<libreria:dameFecha/>" name="fecha">
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<hr>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<div class="col-sm-10">
					<h3>Seleccion de Arqueologo encargado</h3>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<hr>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_arq">Codigo de Arqueologo:</label>
				<div class="col-sm-4">
					<input class="form-control" id="id_arq" type="text" placeholder="Codigo de Arqueologo" disabled>
					<input class="form-control" id="id_arq" type="hidden" name="carq">
				</div>
				<div class="col-sm-4">
					<a class="btn btn-default btn-block" href="#">Buscar Arqueologo encargado</a>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_nombres">Nombres:</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_nombres" type="text" placeholder="Nombres de Arqueologo encargado" disabled>
				</div>
				<label class="control-label col-sm-2" for="id_tiptra">Tipo de Trabajador:</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_tiptra" type="text" placeholder="Tipo de Trabajador" disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_sueldoa">Sueldo al mes</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_sueldoa" type="text" name="sueldo" placeholder="Ingrese Sueldo">
				</div>
				<div class="col-sm-5">
					<a class="btn btn-default btn-block" href="#">Agregar</a>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<hr>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<div class="col-sm-10">
					<h3>Seleccion de Arqueologos y Obreros</h3>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<hr>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_cod">Codigo de Trabajador:</label>
				<div class="col-sm-4">
					<input class="form-control" id="id_cod" type="text" placeholder="Codigo de Trabajador" disabled>
					<input class="form-control" id="id_cod" type="hidden" name="ctra">
				</div>
				<div class="col-sm-4">
					<a class="btn btn-default btn-block" href="#">Buscar Trabajadores</a>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_nombres">Nombres:</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_nombres" type="text" placeholder="Nombres de Trabajador" disabled>
				</div>
				<label class="control-label col-sm-2" for="id_tiptra">Tipo de Trabajador:</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_tiptra" type="text" placeholder="Tipo de Trabajador" disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_sueldoa">Sueldo al mes</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_sueldoa" type="text" name="sueldot" placeholder="Ingrese Sueldo">
				</div>
				<div class="col-sm-5">
					<a class="btn btn-default btn-block" href="#">Agregar</a>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="reset" class="btn btn-default">Cancelar</button>
					<button type="submit" class="btn btn-default">Registrar Personal</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>