<%@ taglib uri="WEB-INF/libreria.tld" prefix="libreria"%>
<%@page import="beans.Reporte"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Actualizar Solicitud</title>
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
		<%
			Reporte x = (Reporte) request.getAttribute("sol");
		%>
		<h2>Conceder permisos de Solicitud</h2>
		<hr>
		<form class="form-horizontal" action="soli" id="id_form" method="post">
			<input type="hidden" name="metodo" value="actualiza">
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<div class="col-sm-10">
					<h3>Datos de la Solicitud</h3>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_codigocli">Número
					de Solicitud:</label>
				<div class="col-sm-8">
					<input class="form-control" type="text"
						value="<%=x.getNum_solicitud()%>" disabled> <input
						class="form-control" type="hidden"
						value="<%=x.getNum_solicitud()%>" name="num">
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_permisos">Permisos
					de Solicitud</label>
				<div class="col-sm-3">
					<input class="form-control" type="text" placeholder="CONCEDIDOS"
						disabled> <input class="form-control" type="hidden"
						value="CONCEDIDOS" name="permisos">
				</div>
				<label class="control-label col-sm-2" for="id_estado">Estado
					de Solicitud</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getEstado_solicitud()%>" disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_fechar">Fecha
					de Registro:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getFecha_reg_solicitud()%>" disabled>
				</div>
				<label class="control-label col-sm-2" for="id_fechaa">Fecha
					de Actualizacion:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<libreria:dameFecha/>" disabled> <input
						type="hidden" class="form-control" id="id_fechaa" name="fechaa"
						value="<libreria:dameFecha/>">
				</div>
				<div class="col-sm-1">&nbsp;</div>
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
				<div class="col-sm-8">
					<input class="form-control" type="text"
						value="<%=x.getCod_cliente()%>" disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_razon">Razon
					Social:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getRazsoc_cliente()%>" disabled>
				</div>
				<label class="control-label col-sm-2" for="id_ruc">RUC de la
					empresa:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getRuc_cliente()%>" disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_tipo">Tipo de
					Cliente</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getTipo_cliente()%>" disabled>
				</div>
				<label class="control-label col-sm-2" for="id_rep">Representante:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getRepresentante_cliente()%>" disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<hr>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<a class="btn btn-default" href="soli?metodo=lista">Cancelar</a>
					<button type="submit" class="btn btn-default">Actualiza
						Solicitud</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>