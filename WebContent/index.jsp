<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loggin - Crear factura</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="${pageContext.request.contextPath}/css/estilos.css" rel="stylesheet" type="text/css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>
	<div class="wrapper fadeInDown">
		  <div id="formContent">
		
		    <div class="fadeIn first">
		      <img src="https://image.flaticon.com/icons/svg/1548/1548286.svg" id="icon" alt="User Icon" />
		    </div>
		
		    <form action="login" method="GET">
		      <input type="text" id="login" class="fadeIn second" name="login" placeholder="login">
		      <input type="text" id="password" class="fadeIn third" name="pass" placeholder="password">
		      <input type="submit" class="fadeIn fourth" value="Log In">
		    </form>
		
		    <div id="formFooter">
		      <a class="underlineHover" href="#">Olvido la clave?</a>
		    </div>
		
		  </div>
	</div>
</body>
</html>