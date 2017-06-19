package beans;

public class SolicitudDTO {
	private String num_solicitud;
	private String permisos_solicitud;
	private String estado_solicitud;
	private String fecha_reg_solicitud;
	private String fecha_act_solicitud;
	private String cod_cliente;

	public String getNum_solicitud() {
		return num_solicitud;
	}

	public void setNum_solicitud(String num_solicitud) {
		this.num_solicitud = num_solicitud;
	}

	public String getPermisos_solicitud() {
		return permisos_solicitud;
	}

	public void setPermisos_solicitud(String permisos_solicitud) {
		this.permisos_solicitud = permisos_solicitud;
	}

	public String getEstado_solicitud() {
		return estado_solicitud;
	}

	public void setEstado_solicitud(String estado_solicitud) {
		this.estado_solicitud = estado_solicitud;
	}

	public String getFecha_reg_solicitud() {
		return fecha_reg_solicitud;
	}

	public void setFecha_reg_solicitud(String fecha_reg_solicitud) {
		this.fecha_reg_solicitud = fecha_reg_solicitud;
	}

	public String getFecha_act_solicitud() {
		return fecha_act_solicitud;
	}

	public void setFecha_act_solicitud(String fecha_act_solicitud) {
		this.fecha_act_solicitud = fecha_act_solicitud;
	}

	public String getCod_cliente() {
		return cod_cliente;
	}

	public void setCod_cliente(String cod_cliente) {
		this.cod_cliente = cod_cliente;
	}

}
