<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mi Chauchera</title>

<script
	src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
<link rel="stylesheet" href="./css/cuenta_banco.css">
<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<!-- nav -->
	<header class="header_pagina_principal">
		<div class="contenedor_derecha">
			<button class="btn-regresar"
				onclick="(window.location ='index.html')">
				<iconify-icon class="icono-boton" icon="mdi:arrow-left" width="20"></iconify-icon>
			</button>
			<button class="boton boton2 usuario_shortcut">
				<img src="https://picsum.photos/30" alt="imagen de usuario">
				<p>Usuario</p>
			</button>
		</div>

	</header>
	<!-- dashboard de cartera digital -->
	<main class="main_pagina_principal">
		<div class="card-cuenta">
			<div>
				<div class=" cuenta_icono">
					<iconify-icon class="icono" icon="mdi:bank" width="32"></iconify-icon>
				</div>
				<h4>${cuenta.nombre}</h4>
				<p>${cuenta.total}</p>
			</div>
			<div class="botones_transacciones">

				<a
					href="RegistrarMovimientosController?ruta=nuevoingreso&idCuenta=${cuenta.id}">
					<iconify-icon icon="ph:arrow-down-bold" width="18"></iconify-icon>
					<span class="texto_boton">Depositar</span>
				</a> <a href=""> <iconify-icon icon="ph:arrow-up-bold" width="18"></iconify-icon>
					<span class="texto_boton">Retirar</span>
				</a> <a href=""> <iconify-icon icon="mingcute:transfer-fill"
						width="18"></iconify-icon> <span class="texto_boton">Transferir</span>
			</div>
		</div>

		<br>

		<div class="contenedor_default grid_abajo">
			<header class="header_contenedor">
				<h3>Transacciones de la Cuenta</h3>
			</header>

			<c:forEach items="${movimientos}" var="movimiento">
				<main id="transacciones" class="mostrar">
					<div class="transaccion">
						<div class="transaccion_icono">
							<iconify-icon class="icono deposito_color"
								icon="ph:arrow-down-bold" width="18"></iconify-icon>
						</div>
						<div class="id_transaccion">${movimiento.id}</div>
						<div class="transaccion_info">
							<h4>${movimiento.tipo}</h4>
							<p>${movimiento.fecha}</p>
						</div>

						<div class="cuenta">
							<div class="cuenta_icono">
								<iconify-icon class="icono" icon="mdi:bank" width="20"></iconify-icon>
							</div>
							<div class="cuenta_info">
								<p>${cuenta.nombre}</p>
							</div>
						</div>

						<div class="concepto">
							<h4>Concepto</h4>
							<p>${movimiento.concepto}</p>
						</div>

						<div class="transaccion_monto">
							<h4>${movimiento.monto}</h4>
						</div>
					</div>
			</c:forEach>
	</main>
	</div>
</body>

</html>