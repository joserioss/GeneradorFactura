<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%
	String nombre = (String) request.getAttribute("nombre");
	String ciudad = (String) request.getAttribute("ciudad");
	String pais = (String) request.getAttribute("pais");
	String direccion = (String) request.getAttribute("direccion");
	String empresa = (String) request.getAttribute("empresa");
	
	Integer valvulas = (Integer) request.getAttribute("valvulas");
	Integer turbo = (Integer) request.getAttribute("turbo");
	Integer refri = (Integer) request.getAttribute("refri");
	Integer frenos= (Integer) request.getAttribute("frenos");
	Integer plumas = (Integer) request.getAttribute("plumas");
	
	String totalValvulas = (String) request.getAttribute("totalValvulas");
	String totalTurbo = (String) request.getAttribute("totalTurbo");
	String totalRefri = (String) request.getAttribute("totalRefri");
	String totalFrenos= (String) request.getAttribute("totalFrenos");
	String totalPlumas = (String) request.getAttribute("totalPlumas");
	
	String valorNetoTotal = (String) request.getAttribute("valorNetoTotal");
	Integer descuento = (Integer) request.getAttribute("descuento");
	String valorTotal = (String) request.getAttribute("valorTotal");

%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nueva Factura</title>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="card">
					<div class="card-body p-0">
						<div class="row p-5">
							<div class="col-md-6">
								<img
									src="http://blog.desafiolatam.com/wp-content/uploads/2017/06/giphy-1.gif">
							</div>

							<div class="col-md-6 text-right">
								<p class="font-weight-bold mb-1">Generador Factura 2019</p>
								<p class="font-weight-bold mb-1">Competition Part Ltda.</p>
								<p class="text-muted">Año 2019 Abril JC.</p>
							</div>
						</div>

						<hr class="my-5">

						<div class="row pb-5 p-5">
							<div class="col-md-6">
								<p class="font-weight-bold mb-4">Información de cliente</p>
								<p class="mb-1">Nombre:</p>
								<p>
									<%=nombre%></p>
								<p>Empresa:</p>
								<p>
									<%=empresa%></p>
								<p class="mb-1">Ciudad, país:</p>

								<p>
									<%=ciudad%> 
									<spam> , </spam>
									<%=pais%>
								</p>
								
								<p class="mb-1">Dirección:</p>
								<p>
									<%=direccion%></p>
							</div>

							<div class="col-md-6 text-right">
								<p class="font-weight-bold mb-4">Detalles de pago</p>
								<p class="mb-1">
									<span class="text-muted">NUM FACTURA: </span> 1425782
								</p>
								<p class="mb-1">
									<span class="text-muted">ID FACTURA: </span> 10253642
								</p>
								<p class="mb-1">
									<span class="text-muted">TIPO PAGO: </span> Dinero
								</p>
								<p class="mb-1">
									<span class="text-muted">EMPRESA: </span> Importadora
								</p>
							</div>
						</div>

						<div class="row p-5">
							<div class="col-md-12">
								<table class="table table-striped table-dark">
									<thead>
										<tr>
											<th scope="col">ITEM</th>
											<th scope="col">DESCRIPCION</th>
											<th scope="col">VALOR UNIDAD</th>
											<th scope="col">CANTIDAD</th>
											<th scope="col">VALOR TOTAL</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Valvulas Titanio</td>
											<td>Valvulas de carrera</td>
											<td>$120.000</td>
											<td><%= valvulas %></td>
											<td><spam> $</spam><%= totalValvulas %></td>
										</tr>
										<tr>
											<td>Turbo Full Carrera</td>
											<td>Turbo de competicion multimarca</td>
											<td>$1.700.000</td>
											<td><%= turbo %></td>
											<td><spam> $</spam><%= totalTurbo %></td>
										</tr>
										<tr>
											<td>Kit de Freno Competicion</td>
											<td>Juego de discos, balatas, caliper de competicion</td>
											<td>$760.000</td>
											<td><%= frenos %></td>
											<td><spam> $</spam><%= totalFrenos %></td>
										</tr>
										<tr>
											<td>Sistema de refrigeracion</td>
											<td>Sistema enfriamiento motor Carrera</td>
											<td>$2.300.000</td>
											<td><%= refri %></td>
											<td><spam> $</spam><%= totalRefri %></td>
										</tr>
										<tr>
											<td>Plumillas Limpiaparabrisas standar</td>
											<td>plumillas para la lluvia</td>
											<td>$10.000</td>
											<td><%= plumas %></td>
											<td><spam> $</spam><%= totalPlumas %></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<div class="d-flex flex-row-reverse bg-dark text-white p-4">
							<div class="py-3 px-5 text-right">
								<div class="mb-2">VALOR TOTAL</div>
								<div class="h2 font-weight-light"><spam> $</spam><%= valorTotal %></div>
							</div>

							<div class="py-3 px-5 text-right">
								<div class="mb-2">Descuento</div>
								<div class="h2 font-weight-light">10%</div>
							</div>

							<div class="py-3 px-5 text-right">
								<div class="mb-2">VALOR TOTAL NETO</div>
								<div class="h2 font-weight-light"><spam> $</spam><%= valorNetoTotal %></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="text-light mt-5 mb-5 text-center small">
			by : <a class="text-light" target="_blank"
				href="http://totoprayogo.com">totoprayogo.com</a>
		</div>

	</div>
</body>
</html>