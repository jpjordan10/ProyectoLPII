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
		<form class="form-horizontal" action="soli" id="id_form">
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
					<!--  <a class="btn btn-default btn-block"
						href="cliente?metodo=listaclientemodal" data-toggle="modal"
						data-target="#buscarCliente">Buscar Cliente</a>-->
						<a class="btn btn-default btn-block"
						href="cliente?metodo=listaclientemodal1">Buscar Cliente</a>
					<!-- Modal
					<div class="modal fade" id="buscarCliente" role="dialog">
						<div class="modal-dialog">
							<!-- Modal content
							<div class="modal-content" id="todo">
								<div class="modal-header">
									<h4 class="modal-title">Buscar Cliente</h4>
								</div>
								<div class="modal-body">
									<!-- Listado de Clientes
									<table class="table table-striped table-bordered nowrap"
										id="show">
										<thead>
											<tr>
												<th>Codigo</th>
												<th>Razon Social</th>
												<th>RUC</th>
												<th>Representante</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											
												ArrayList<ClienteDTO> lista = (ArrayList<ClienteDTO>) request.getSession().getAttribute("data1");
												if (lista != null) {
													for (ClienteDTO c : lista) {
											%>
											<tr>
												<td>c.getCod_cliente()%></td>
												<td>c.getRazsoc_cliente()%></td>
												<td>c.getRuc_cliente()%></td>
												<td>c.getRepresentante_cliente()%></td>
												<td>imageeeeen</td>
											</tr>
											
												//}
												//}
											%>
										</tbody>
									</table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Cerrar</button>
								</div>
							</div>
						</div>
					</div>-->
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
					<button type="reset" class="btn btn-default">Cancelar</button>
					<button type="submit" class="btn btn-default">Generar Solicitud</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>