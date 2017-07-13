<!DOCTYPE html>
<html lang="en">
<head>
<title>Bienvenidos</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	font: 400 15px Lato, sans-serif;
	line-height: 1.8;
	color: #818181;
}

h2 {
	font-size: 24px;
	text-transform: uppercase;
	color: #303030;
	font-weight: 600;
	margin-bottom: 30px;
}

h4 {
	font-size: 19px;
	line-height: 1.375em;
	color: #303030;
	font-weight: 400;
	margin-bottom: 30px;
}

.jumbotron {
	background-color: #A4A4A4;
	color: #fff;
	padding: 100px 25px;
	font-family: Montserrat, sans-serif;
}

.container-fluid {
	padding: 0px 50px;
}

.bg-grey {
	background-color: #f6f6f6;
}

.logo-small {
	color: #A4A4A4;
	font-size: 50px;
}

.logo {
	color: #A4A4A4;
	font-size: 200px;
}

.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail img {
	width: 100%;
	height: 100%;
	margin-bottom: 10px;
}

.carousel-control.right, .carousel-control.left {
	background-image: none;
	color: #A4A4A4;
}

.carousel-indicators li {
	border-color: #A4A4A4;
}

.carousel-indicators li.active {
	background-color: #A4A4A4;
}

.item h4 {
	font-size: 19px;
	line-height: 1.375em;
	font-weight: 400;
	font-style: italic;
	margin: 70px 0;
}

.item span {
	font-style: normal;
}

.panel {
	border: 1px solid #f4511e;
	border-radius: 0 !important;
	transition: box-shadow 0.5s;
}

.panel:hover {
	box-shadow: 5px 0px 40px rgba(0, 0, 0, .2);
}

.panel-footer .btn:hover {
	border: 1px solid #f4511e;
	background-color: #fff !important;
	color: #f4511e;
}

.panel-heading {
	color: #fff !important;
	background-color: #f4511e !important;
	padding: 25px;
	border-bottom: 1px solid transparent;
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
	border-bottom-left-radius: 0px;
	border-bottom-right-radius: 0px;
}

.panel-footer {
	background-color: white !important;
}

.panel-footer h3 {
	font-size: 32px;
}

.panel-footer h4 {
	color: #aaa;
	font-size: 14px;
}

.panel-footer .btn {
	margin: 15px 0;
	background-color: #f4511e;
	color: #fff;
}

.navbar {
	margin-bottom: 0;
	background-color: #A4A4A4;
	z-index: 9999;
	border: 0;
	font-size: 12px !important;
	line-height: 1.42857143 !important;
	letter-spacing: 4px;
	border-radius: 0;
	font-family: Montserrat, sans-serif;
}

.navbar li a, .navbar .navbar-brand {
	color: #fff !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
	color: #BDBDBD !important;
	background-color: #fff !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
	color: #fff !important;
}

footer .glyphicon {
	font-size: 20px;
	margin-bottom: 20px;
	color: #A4A4A4;
}

.slideanim {
	visibility: hidden;
}

.slide {
	animation-name: slide;
	-webkit-animation-name: slide;
	animation-duration: 1s;
	-webkit-animation-duration: 1s;
	visibility: visible;
}

@
keyframes slide { 0% {
	opacity: 0;
	transform: translateY(70%);
}

100%
{
opacity
:
 
1;
transform
:
 
translateY
(0%);

    
}
}
@
-webkit-keyframes slide { 0% {
	opacity: 0;
	-webkit-transform: translateY(70%);
}

100%
{
opacity
:
 
1;
-webkit-transform
:
 
translateY
(0%);

    
}
}
@media screen and (max-width: 768px) {
	.col-sm-4 {
		text-align: center;
		margin: 25px 0;
	}
	.btn-lg {
		width: 100%;
		margin-bottom: 35px;
	}
}

@media screen and (max-width: 480px) {
	.logo {
		font-size: 150px;
	}
}
</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60">

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp"> <img
					src="./images/logo.png">
				</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#about">ACERCA DE </a></li>
					<li><a href="#services">SERVICIOS</a></li>
					<li><a href="#portfolio">FOTOS</a></li>
					<li><a href="#contact">CONTACTO</a></li>
					<li><a href="login.jsp"><span
							class="glyphicon glyphicon-log-in"></span>Login</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="jumbotron text-center">
		<img src="./images/banner.jpg" alt="etc" />
		<h1>Consultoria y Estudios en Herencia Cultural</h1>

	</div>

	<!-- Container (About Section) -->
	<div id="about" class="container-fluid">
		<div class="row">
			<div class="col-sm-8">
				<h2>PROYECTOS EN CURSO</h2>
				<br>
				<h4>CEHC, Tiene Amplia Experiencia y Gran Respaldo Como Empresa
					Constituida Y Gran Presencia Formal En El �mbito de La Arqueolog�a
					Adem�s De Estar Actualmente Realizando Diversos Proyectos De
					Consultor�a y Trabajo Con Diversas Empresas En Muchos Puntos Del
					Per�.</h4>
				<br>

			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-signal logo"></span>
			</div>
		</div>
	</div>

	<div class="container-fluid bg-grey">
		<div class="row">
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-globe logo slideanim"></span>
			</div>
			<div class="col-sm-8">
				<h2>NUESTROS VALORES</h2>
				<br>
				<h4>
					<strong>MISSION:</strong> Brindar un servicio de consultor�a
					arqueol�gica protegiendo y promoviendo los recursos arqueol�gicos
					para ser integrados a los planes de desarrollo social de nuestro
					pa�s.
				</h4>
				<br>
				<p>
					<strong>VISION:</strong> Nos proyectamos como una Consultor�a
					Arqueol�gica l�der en nuestro pa�s, considerando el adecuado manejo
					y protecci�n del Patrimonio Arqueol�gico conjuntamente con el
					desarrollo de las actividades productivas de nuestros clientes.
				</p>
			</div>
		</div>
	</div>

	<!-- Container (Services Section) -->
	<div id="services" class="container-fluid text-center">
		<h2>SERVICIOS</h2>
		<h4></h4>
		<br>
		<div class="row slideanim">
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-warning-sign logo-small"></span>
				<h4>EXCAVACIONES PARA DELIMITAR</h4>
				<p>Se realiza cuando ya se verifico la presencia de un resto
					arqueol�gico y falta determinar su �rea exacta.</p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-list-alt logo-small"></span>
				<h4>TR�MITE DE CIRA</h4>
				<p>Certificado de Inexistencia de Restos Arqueol�gicos que
					expide el Ministerio de Cultura, y es requisito indispensable para
					autorizar el inicio de obras civiles, p�blicas o privadas.</p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-eye-open logo-small"></span>
				<h4>MONITOREO ARQUEOLOGICO</h4>
				<p>Documento que es desarrollado cuando se ha identificado,
					durante los trabajos de ingenier�a de un proyecto, componentes
					culturales y arquitect�nicos de origen arqueol�gico, que pudieran
					encontrarse en el subsuelo.</p>
			</div>
		</div>
		<br>
		<br>
		<div class="row slideanim">
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-wrench logo-small"></span>
				<h4>EXCAVACIONES DE RESCATE</h4>
				<p>Establecer un procedimiento de rescate industrial que permita
					una respuesta r�pida, eficaz y Segura para evacuar personas en
					espacios confinados</p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-random logo-small"></span>
				<h4>EXCAVACIONES PARA MEDIR POTENCIA</h4>
				<p>Est� especialmentedise�ada para ejecutar pantallas en
					terrenos de dureza elevada, realizar excavacionesprofundas o
					resolver situaciones de obras singularesque requieren un m�todo de
					m�ximafinabilidad y seguridad</p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-compressed	Try it
 logo-small"></span>
				<h4 style="color: #303030;">PROYECTOS DE PUESTA EN VALOR</h4>
				<p>La puesta en valor de los restos arqueol�gicos debe estar m�s
					pr�xima a la interpretaci�n que a una aparatosa reconstrucci�n.</p>
			</div>
		</div>
	</div>

	<!-- Container (Portfolio Section) -->
	<div id="portfolio" class="container-fluid text-center bg-grey">
		<h2>FOTOS</h2>
		<br>
		<h4></h4>
		<div class="row text-center slideanim">
			<div class="col-sm-4">
				<div class="thumbnail">
					<img src="./images/ImagenPor1.jpeg" alt="Paris" width="400"
						height="300">
					<p>
						<strong>Acueductos de Cantalloc</strong>
					</p>
					<p>LIMA</p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="thumbnail">
					<img src="./images/ImagenPor2.jpeg" alt="New York" width="400"
						height="300">
					<p>
						<strong>Raqchi</strong>
					</p>
					<p>CUZCO</p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="thumbnail">
					<img src="./images/ImagenPor3.jpeg" alt="San Francisco" width="400"
						height="300">
					<p>
						<strong> Qenko</strong>
					</p>
					<p>Cuzco - P�sac</p>
				</div>
			</div>
		</div>
		<br>

		<h2>LO QUE DICEN NUESTROS CLIENTES</h2>
		<div id="myCarousel" class="carousel slide text-center"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<h4>
						La noci�n de discontinuidad ocupa un lugar mayor en las
						disciplinas hist�ricas. <br>
						<span> MICHEL FOUCAULT</span>
					</h4>
				</div>
				<div class="item">
					<h4>
						El hombre es una invenci�n cuya fecha reciente muestra con toda
						facilidad la arqueolog�a de nuestro pensamiento. <br>
						<span>Michel de Montaigne</span>
					</h4>
				</div>
				<div class="item">
					<h4>
						El hombre es una invenci�n cuya fecha reciente muestra con toda
						facilidad la arqueolog�a de nuestro pensamiento.<br>
						<span>Foucault, Michel</span>
					</h4>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>


	<!-- Container (Contact Section) -->
	<div id="contact" class="container-fluid bg-grey">
		<h2 class="text-center">CONTACTO</h2>
		<div class="row">
			<div class="col-sm-5">
				<p>P�ngase en contacto con nosotros y nos pondremos en contacto
					con usted en 24 horas.</p>
				<p>
					<span class="glyphicon glyphicon-map-marker"></span> Jr. Toribio
					Rodriguez de Mendoza N� 230 Urb. San Agust�n- Lima 7
				</p>
				<p>
					<span class="glyphicon glyphicon-phone"></span> +51 (1) 536 8078
				</p>
				<p>
					<span class="glyphicon glyphicon-envelope"></span>
					central@arqueologosconsultores.com
				</p>
			</div>
			<div class="col-sm-7 slideanim">
				<div class="row">
					<div class="col-sm-6 form-group">
						<input class="form-control" id="name" name="name"
							placeholder="Name" type="text" required>
					</div>
					<div class="col-sm-6 form-group">
						<input class="form-control" id="email" name="email"
							placeholder="Email" type="email" required>
					</div>
				</div>
				<textarea class="form-control" id="comments" name="comments"
					placeholder="Comment" rows="5"></textarea>
				<br>
				<div class="row">
					<div class="col-sm-12 form-group">
						<button class="btn btn-default pull-right" type="submit">Enviar
							Mensaje</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Add Google Maps -->
	<!-- <div id="googleMap" style="height:400px;width:100%;"></div> -->
	<!-- <script> -->
	<!-- // function myMap() { -->
	<!-- // var myCenter = new google.maps.LatLng(41.878114, -87.629798); -->
	<!-- // var mapProp = {center:myCenter, zoom:12, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP}; -->
	<!-- // var map = new google.maps.Map(document.getElementById("googleMap"),mapProp); -->
	<!-- // var marker = new google.maps.Marker({position:myCenter}); -->
	<!-- // marker.setMap(map); -->
	<!-- // } -->
	<!-- </script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>

To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp

 -->
	<footer class="container-fluid text-center">
		<a href="#myPage" title="To Top"> <span
			class="glyphicon glyphicon-chevron-up"></span>
		</a>

	</footer>

	<script>
		$(document).ready(
				function() {
					// Add smooth scrolling to all links in navbar + footer link
					$(".navbar a, footer a[href='#myPage']").on('click',
							function(event) {
								// Make sure this.hash has a value before overriding default behavior
								if (this.hash !== "") {
									// Prevent default anchor click behavior
									event.preventDefault();

									// Store hash
									var hash = this.hash;

									// Using jQuery's animate() method to add smooth page scroll
									// The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
									$('html, body').animate({
										scrollTop : $(hash).offset().top
									}, 900, function() {

										// Add hash (#) to URL when done scrolling (default click behavior)
										window.location.hash = hash;
									});
								} // End if
							});

					$(window).scroll(function() {
						$(".slideanim").each(function() {
							var pos = $(this).offset().top;

							var winTop = $(window).scrollTop();
							if (pos < winTop + 600) {
								$(this).addClass("slide");
							}
						});
					});
				})
	</script>

</body>
</html>
