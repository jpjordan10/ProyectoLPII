function buscarSolicitud(){
	$.ajax({
		url:'ServletSolicitud',
		type: "GET",
		data: "metodo=listapendientes",
		success: function(datos){
			$("#tablaSolicitud").html(datos);
		}
	});
}