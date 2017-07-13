<%@ taglib uri="WEB-INF/libreria.tld" prefix="libreria"%>
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
<script type="text/javascript" src="jquery-functions.js"></script>	
</head>
<body>
	<div class="container">
		<h2>Registrar Proyecto</h2>
		<hr>
		<form class="form-horizontal" action="proy" id="id_form" method="post">
			<input type="hidden" name="metodo" value="registra">
			<!-- DATOS DE LA SOLICITUD -->
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<div class="col-sm-10">
					<h3>Datos de la solicitud</h3>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<hr>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_numsoli">Nº
					Solicitud:</label>
				<div class="col-sm-6">
					<input class="form-control" id="id_numsoli" type="text"
						placeholder="Número de Solicitud" value="${param.y}" disabled>
					<input class="form-control" id="id_numsoli" type="hidden"
						name="numsoli" value="${param.y}">
				</div>
				<div class="col-sm-2">
					<a class="btn btn-default btn-block" href="soli?metodo=listapendientes">Buscar Solicitud</a>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_razon">Razon
					Social:</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_razon" type="text" name="razon"
						placeholder="Razon Social de la empresa" value="${param.i}"
						disabled>
				</div>
				<label class="control-label col-sm-2" for="id_ruc">RUC de la
					empresa:</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_ruc" type="text" name="ruc"
						placeholder="Ruc de la empresa" value="${param.u}" disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_tipo">Tipo de
					Cliente</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_tipo" type="text" name="tipo"
						placeholder="Tipo de cliente" value="${param.p}" disabled>
				</div>
				<label class="control-label col-sm-2" for="id_rep">Representante:</label>
				<div class="col-sm-3">
					<input class="form-control" id="id_rep" type="text" name="rep"
						placeholder="Representante de la empresa" value="${param.o}"
						disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
				<div id="tablaSolicitud"></div>
			</div>
			<!-- FIN DATOS DE LA SOLICITUD -->
			<hr>
			<!-- DATOS DEL PROYECTO -->
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<div class="col-sm-10">
					<h3>Datos del Proyecto</h3>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
					<label class="control-label col-sm-2" for="id_fechar">Fecha de Registro:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text" value="<libreria:dameFecha/>" disabled>
					<input type="hidden" class="form-control" id="id_fechar" name="fechar" value="<libreria:dameFecha/>">
				</div>
				<label class="control-label col-sm-2" for="id_fechaa">Fecha de Actualizacion:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text" value="<libreria:dameFecha/>" disabled>
					<input type="hidden" class="form-control" id="id_fechaa" name="fechaa" value="<libreria:dameFecha/>">
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
					<label class="control-label col-sm-2" for="id_departamento">Departamento:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text" placeholder="Ingrese Departamento" name="departamento" id="id_departamento">
				</div>
					<label class="control-label col-sm-2" for="id_provincia">Provincia:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text" placeholder="Ingrese Provincia" name="provincia" id="id_provincia">
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
					<label class="control-label col-sm-2" for="id_distrito">Distrito:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text" placeholder="Ingrese Distrito" name="distrito" id="id_distrito">
				</div>
					<label class="control-label col-sm-2" for="id_direccion">Dirección:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text" placeholder="Ingrese Direccion" name="direccion" id="id_direccion">
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
					<label class="control-label col-sm-2" for="id_trabajo">Trabajo a realizar:</label>
				<div class="col-sm-3">
					<libreria:dameTipoTrabajo/>
				</div>
				<label class="control-label col-sm-2" for="id_etapa">Etapa de Proyecto</label>
				<div class="col-sm-3">
					<input class="form-control" type="text" placeholder="PRIMERA" disabled>
					<input type="hidden" class="form-control" id="id_etapa" name="etapa" value="PRIMERA">
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
					<label class="control-label col-sm-2" for="id_ctrabajo">Costo de Trabajo:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text" placeholder="Ingrese Costo" name="costo" id="id_costo">
				</div>
					<label class="control-label col-sm-2" for="id_meses">Meses de Trabajo:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text" placeholder="Ingrese Meses de Trabajo" name="meses" id="id_meses">
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<!-- FIN DATOS DE DATOS DE PROYECTO -->
			<hr>
			<div class="form-group">
				<div class="col-sm-8">
					&nbsp;
				</div>
				<div class="col-sm-4">
					<a class="btn btn-default" href="proy?metodo=lista">Cancelar</a>
					<button type="submit" class="btn btn-default">Registrar</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>