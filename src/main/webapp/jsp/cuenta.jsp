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
	<!-- información cuenta -->
	<main class="main_pagina_principal">

		<div class="card-cuenta">
			<div>
				<h4>${cuenta.nombre}</h4>
				<p>${cuenta.total}</p>
			</div>
			<div class="botones_transacciones">

				<a href=""><iconify-icon icon="ph:arrow-down-bold" width="18"></iconify-icon>
					<span class="texto_boton">Depositar</span> </a> <a href=""> <iconify-icon
						icon="ph:arrow-up-bold" width="18"></iconify-icon> <span
					class="texto_boton">Retirar</span>
				</a> <a href=""> <iconify-icon icon="mingcute:transfer-fill"
						width="18"></iconify-icon> <span class="texto_boton">Transferir</span>
				</a>
			</div>
		</div>

		<br>

		<div class="contenedor_default grid_abajo">
			<header class="header_contenedor">
				<h3>Transacciones de la Cuenta</h3>
			</header>

			<main id="transacciones" class="mostrar">
				<c:forEach items="${movimientos}" var="movimiento" varStatus="loop">
					<c:if test="${loop.first}">
						<div class="transaccion">
							<!-- Nombres de las columnas -->
							<div>
								<h4>Movimiento</h4>
							</div>
							<div>
								<h4>ID</h4>
							</div>
							<div>
								<h4>Tipo de Transacción</h4>
							</div>
							<div>
								<h4>Categoría</h4>
							</div>
							<div>
								<h4>Fecha</h4>
							</div>
							<div>
								<h4>Concepto</h4>
							</div>
							<div>
								<h4>Monto</h4>
							</div>
						</div>
					</c:if>
					<div class="transaccion">
						<!-- Ícono de tipo de transacción -->
						<div class="transaccion_icono">
							<c:choose>
								<c:when test="${movimiento.tipo eq 'INGRESO'}">
									<iconify-icon class="icono deposito_color"
										icon="ph:arrow-down-bold" width="18"></iconify-icon>
								</c:when>
								<c:when test="${movimiento.tipo eq 'EGRESO'}">
									<iconify-icon class="icono retiro_color"
										icon="ph:arrow-up-bold" width="18"></iconify-icon>
								</c:when>
							</c:choose>
						</div>

						<!-- ID de transacción -->
						<div class="id_transaccion">${movimiento.id}</div>

						<!-- Info de transacción (tipo)-->
						<div class="transaccion_tipo">
							<h4>${movimiento.tipo}</h4>
						</div>

						<!-- Info de transacción (tipo)-->
						<div class="transaccion_categoria">
							<h4>${movimiento.categoria.nombre}</h4>
						</div>

						<!-- Info de transacción (fecha)-->
						<div class="transaccion_fecha">
							<p>${movimiento.fecha}</p>
						</div>

						<!-- Concepto de transacción -->
						<div class="concepto">
							<p>${movimiento.concepto}</p>
						</div>

						<!-- Monto de transacción -->
						<div class="transaccion_monto">
							<h4>${movimiento.monto}</h4>
						</div>
					</div>
				</c:forEach>
			</main>

		</div>
	</main>
</body>

</html>