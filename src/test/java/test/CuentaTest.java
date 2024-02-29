package test;

import static org.junit.Assert.*;

import org.junit.Test;

import entities.Cuenta;
import entities.CuentaDTO;

public class CuentaTest {

	@Test
	public void testGetById() {
		Cuenta cuenta = Cuenta.getById(1);
		assertNotNull(cuenta);
	}

	@Test
	public void testGetCuentaInfo() {
		CuentaDTO cuentaDto = Cuenta.getCuentaInfo(2);
		assertNotNull(cuentaDto);
	}

}
