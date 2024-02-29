package test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import entities.Movimiento;

public class MovimientoTest {

	@Test
	public void testGetAllByCuenta() {
		List<Movimiento> movimientos = Movimiento.getAllByCuenta(1);
		assertNotNull(movimientos);
	}

}
