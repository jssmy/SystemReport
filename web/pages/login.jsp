<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>BeramarApp</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="css/style.css">
  
</head>

<body>
  
<!-- Form Mixin-->
<!-- Input Mixin-->
<!-- Button Mixin-->
<div>
    <c:if test="${sessionScope.user != null}">
		<c:redirect url="/panel"/>
    </c:if>
    <img class="displayed" src="imagenes/logo_Beramar.PNG" alt=""/>
</div><br/><br/>
<!-- Form Module-->
<div class="module form-module">
  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
    <div class="tooltip ">Nuevo</div>
  </div>
  <div class="form">
    <h2>Credenciales de Usuario</h2>
    <form action="login" method="post">
      <input type="text" name="email" placeholder="Usuario..."/>
      <input type="password" name="pass" placeholder="Contraseña..."/>
      
      <button type="submit">Iniciar Sesión</button>
    </form>
  </div>
  <div class="form">
    <h2>Create an account</h2>
    <form >
      <input type="text"  placeholder="Usuario"/>
      <input type="password" placeholder="Contraseña"/>
      <input type="email" placeholder="Email Interno"/>
      <input type="tel" placeholder="Celular"/>
      <button>Registrar</button>
    </form>
  </div>
  <div class="cta"><a href="http://beramar.net/">Olvidaste tu contraseña?</a></div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script>
    (function() {
  var button, buttonStyles, materialIcons;

  materialIcons = '<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">';

  buttonStyles = '<link href="http://codepen.io/andytran/pen/vLmRVp.css" rel="stylesheet">';

  button = '<a href="web/pages/home.jsp" class="at-button"><i class="material-icons">link</i></a>';

  document.body.innerHTML += materialIcons + buttonStyles + button;

}).call(this);
  </script>
    <script src="js/index.js"></script>

</body>
</html>