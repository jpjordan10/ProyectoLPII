package beans;

public class DetalleProyectoDTO {
	private String num_proyecto;
	private String cod_trabajador;
	private double sueldo_mes;
	private double sueldo_total;

	public String getNum_proyecto() {
		return num_proyecto;
	}

	public void setNum_proyecto(String num_proyecto) {
		this.num_proyecto = num_proyecto;
	}

	public String getCod_trabajador() {
		return cod_trabajador;
	}

	public void setCod_trabajador(String cod_trabajador) {
		this.cod_trabajador = cod_trabajador;
	}

	public double getSueldo_mes() {
		return sueldo_mes;
	}

	public void setSueldo_mes(double sueldo_mes) {
		this.sueldo_mes = sueldo_mes;
	}

	public double getSueldo_total() {
		return sueldo_total;
	}

	public void setSueldo_total(double sueldo_total) {
		this.sueldo_total = sueldo_total;
	}

}
