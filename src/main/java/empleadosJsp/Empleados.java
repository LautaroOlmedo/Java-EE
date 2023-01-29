package empleadosJsp;

public class Empleados {
	
	public Empleados(String nombre, String apellido, String puesto, double sueldo) {
		this.nombre = nombre;
		this.apellido = apellido;
		this.puesto = puesto;
		this.sueldo = sueldo;
	}
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getPuesto() {
		return puesto;
	}
	public void setPuesto(String puesto) {
		this.puesto = puesto;
	}
	public double getSueldo() {
		return sueldo;
	}
	public void setSueldo(double sueldo) {
		this.sueldo = sueldo;
	}

	private String nombre, apellido, puesto;
	private double sueldo;
}
