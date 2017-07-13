<!DOCTYPE html>
<html lang="en">
<head>
<title>Iniciar Sesión</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
	<div class="wrapper">
		<form class="form-signin" action="trabajador?metodo=sesion" name="frmsesion" method="post" >
			<h2 class="form-signin-heading">Iniciar Sesión</h2>
			<br>
			<br> <input type="text" class="form-control" name="username"
				placeholder="Usuario" required="" autofocus="" /> <br> <input
				type="password" class="form-control" name="password"
				placeholder="Contraseña" required="" /> <br>
			<button class="btn btn-lg btn-success btn-block" type="submit">Login</button>
			<a class="btn btn-lg btn-default btn-block" href="index.jsp" >Cancelar</a>
			<label>${requestScope.msg}</label>
		</form>
	</div>
</body>
</html>