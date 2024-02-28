package entities;

import java.util.List;

public class CuentaDTO {

	private Cuenta cuenta;
	private List<Movimiento> movimientos;

	public CuentaDTO() {
	}

	public CuentaDTO(Cuenta cuenta, List<Movimiento> movimientos) {
		super();
		this.cuenta = cuenta;
		this.movimientos = movimientos;
	}

	public Cuenta getCuenta() {
		return cuenta;
	}

	public void setCuenta(Cuenta cuenta) {
		this.cuenta = cuenta;
	}

	public List<Movimiento> getMovimientos() {
		return movimientos;
	}

	public void setMovimientos(List<Movimiento> movimientos) {
		this.movimientos = movimientos;
	}
}
