<%@ taglib uri="WEB-INF/libreria.tld" prefix="libreria"%>
<%@page import="beans.Reporte"%>
<!DOCTYPE html>
<html lang="en">
<title>Datos del Proyecto</title>
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
			Reporte x = (Reporte) request.getAttribute("pro");
		%>
		<h2>Datos del Proyecto</h2>
		<hr>
		<form class="form-horizontal" id="id_form" method="post">
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
				<label class="control-label col-sm-2" for="id_numproy">Numº
					Proyecto:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getNum_proyecto()%>" disabled>
				</div>
				<label class="control-label col-sm-2" for="id_cliente">Cliente:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getRazsoc_cliente()%>" disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_fechar">Fecha
					de Registro:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getFecha_reg_proyecto()%>" disabled>
				</div>
				<label class="control-label col-sm-2" for="id_fechaa">Fecha
					de Actualizacion:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getFecha_act_proyecto()%>" disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_departamento">Departamento:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getDepartamento_proyecto()%>" disabled>
				</div>
				<label class="control-label col-sm-2" for="id_provincia">Provincia:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getProvincia_proyecto()%>" disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_distrito">Distrito:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getDistrito_proyecto()%>" disabled>
				</div>
				<label class="control-label col-sm-2" for="id_direccion">Dirección:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getDireccion_proyecto()%>" disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_trabajo">Trabajo
					a realizar:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getDes_tiptrabajo()%>" disabled>
				</div>
				<label class="control-label col-sm-2" for="id_etapa">Etapa
					de Proyecto</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getEtapa_proyecto()%>" disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<div class="form-group">
				<div class="col-sm-1">&nbsp;</div>
				<label class="control-label col-sm-2" for="id_ctrabajo">Costo
					de Trabajo:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getCosto_proyecto()%>" disabled>
				</div>
				<label class="control-label col-sm-2" for="id_meses">Meses
					de Trabajo:</label>
				<div class="col-sm-3">
					<input class="form-control" type="text"
						value="<%=x.getCan_mes_proyecto()%>" disabled>
				</div>
				<div class="col-sm-1">&nbsp;</div>
			</div>
			<hr>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<a class="btn btn-default" href="proy?metodo=lista">Cancelar</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>