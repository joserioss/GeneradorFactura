<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%
	Boolean showError1 = false;
	Boolean showError2 = false;
	Boolean showCerrarSesion = false;
	showError1 = (Boolean) request.getAttribute("mostrarError1");
	showError2 = (Boolean) request.getAttribute("mostrarError2");
	showCerrarSesion = (Boolean) request.getAttribute("mostrarLogout");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loggin - Crear factura</title>

<link href="${pageContext.request.contextPath}/css/estilos.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>

</head>
<body>
	<div class="wrapper fadeInDown">
		<div id="formContent">

			<div class="fadeIn first">
				<img src="https://image.flaticon.com/icons/svg/1548/1548286.svg"
					id="icon" alt="User Icon" />
			</div>

			<form action="login" method="GET">
				<input type="text" id="login" class="fadeIn second" name="login"
					placeholder="login"> <input type="password" id="password"
					class="fadeIn second" name="pass" placeholder="password"> <input
					type="submit" class="fadeIn fourth" value="Log In">
			</form>

			<div id="formFooter">
				<a class="underlineHover" href="#">Olvido la clave?</a>
			</div>

		</div>
	</div>

	<!-- The Modal: ERROR PASSWORD-->
	<div class="modal" id="modalErrorLogin1">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">No se pudo Iniciar Sesion</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">Password incorrecto</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
				</div>

			</div>
		</div>
	</div>

	<!-- The Modal: ERROR USER-->
	<div class="modal" id="modalErrorLogin2">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">No se pudo Iniciar Sesion</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">Usuario no existe</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
				</div>

			</div>
		</div>
	</div>



	<!-- The Modal -->
	<div class="modal" id="modalogout">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Su sesion ha sido cerrada con exito</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal"
						onClick="location = 'index.jsp'">Cerrar</button>
				</div>

			</div>
		</div>
	</div>

	<%
		if (showError1 != null && showError1.equals(true)) {
	%>
	<Script>
		$('#modalErrorLogin1').modal('show')
	</Script>
	<%
		}
	%>
	<%
		if (showError2 != null && showError2.equals(true)) {
	%>
	<Script>
		$('#modalErrorLogin2').modal('show')
	</Script>
	<%
		}
	%>

	<%
		if (showCerrarSesion != null && showCerrarSesion.equals(true)) {
	%>
	<Script>
		$('#modalogout').modal('show')
	</Script>
	<%
		}
	%>

</body>
</html>