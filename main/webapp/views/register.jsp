<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="icon" type="image/png" href="../img/logo-salvando-patitas.png">
	<title>Salvando Patitas | Registrarse</title>
	<link rel="stylesheet" href="../css/registro.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  	<link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body class="sign-in-basic">
 <div class="page-header align-items-start min-vh-100" style="background-image: url('https://images.unsplash.com/photo-1497294815431-9365093b7331?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80');" loading="lazy">
    <span class="mask bg-gradient-dark opacity-6"></span>
    <div class="container my-auto">
      <div class="row">
        <div class="col-lg-4 col-md-8 col-12 mx-auto">
          <div class="card z-index-0 fadeIn3 fadeInBottom">
            <div class="card-header p-0 position-relative mt-n5 mx-3 z-index-2">
              <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
                <h4 class="text-white font-weight-bolder text-center mt-2 mb-0">Formulario de registro</h4>
                <div class="row mt-2">
                  <div class="col-2 text-center ms-auto">
                    <a class="btn btn-link px-3 mb-0" href="https://www.facebook.com/cris223511/"><i class="fab fa-facebook text-lg text-white me-4"></i></a>
                  </div>
                  <div class="col-2 text-center px-3">
                    <a class="btn btn-link px-3 mb-0" href="https://www.instagram.com/chris.antps_18/"><i class="fab fa-instagram text-lg text-white me-4"></i></a>
                  </div>
                  <div class="col-2 text-center px-3">
                    <a class="btn btn-link px-3 mb-0" href="https://github.com/jafcn09/Mascotas"><i class="fas fa-code white-text text-lg text-white me-4"></i></a>
                  </div>
                  <div class="col-2 text-center me-auto">
                    <a class="btn btn-link px-3 mb-0" href="https://github.com/Cris223511"><i class="fab fa-github text-lg text-white"></i></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-body">
              <form class="p-3" id="contact-form" method="post" action="../views/usuario">
                <div class="input-group input-group-outline mb-3">
                  <label class="form-label" for="nombre">¿Cuál es tu primer nombre?</label>
                  <input type="text" class="form-control" id="nombre" name="nombre" maxlength="30" required>
                </div>
                <div class="input-group input-group-outline mb-3">
                  <label class="form-label" for="apellido">¿Cuál es tu primer apellido?</label>
                  <input type="text" class="form-control" id="apellido" name="apellido" maxlength="30" required>
                </div>
                <div class="input-group input-group-outline mb-3">
                  <label class="form-label" for="correo">¿Cuál es tu correo electrónico?</label>
                  <input type="email" class="form-control" id="correo" name="correo" maxlength="50" required>
                </div>
                <div class="input-group input-group-outline mb-3">
                  <label class="form-label" for="edad">¿Qué edad tienes?</label>
                  <input type="number" class="form-control" id="edad" name="edad" min="1" max="99" maxlength ="2" oninput="maxLengthCheck(this)" required>
                </div>
                <div class="input-group input-group-outline mb-3">
                  <label class="form-label" for="dni">Escribe tu número de DNI</label>
                  <input type="number" class="form-control" id="dni" name="dni" min="01111111" max="99999999" maxlength ="8" oninput="maxLengthCheck2(this)" required>
                </div>
                <div class="input-group input-group-outline mb-3">
                  <label class="form-label" for="sexo">¿Qué género eres?</label>
                  <input type="text" class="form-control" id="sexo" name="sexo" maxlength ="9" required>
                </div>
                <div class="input-group input-group-outline mb-3">
                  <label class="form-label" for="clave">Ingresa tu contraseña</label>
                  <input type="password" class="form-control" id="clave" name="clave" maxlength ="20" required>
                </div>
                <div class="form-check form-switch d-flex align-items-center mb-3">
                  <input class="form-check-input mt-2 mb-0" type="checkbox" id="rememberMe">
                  <label class="form-check-label mt-2 mb-0 ms-3" for="rememberMe">He leído y acepto los términos y condiciones de uso.</label>
                </div>
                <div class="text-center">
                  <button type="submit" value="Registrarme" class="btn bg-gradient-primary w-100 my-4 mb-2 mt-0" name="action">Registrarme</button>
                </div>
                <p class="mt-4 text-sm text-center">
                  ¿Ya tienes una cuenta?
                  <a href="login.jsp" class="text-primary text-gradient font-weight-bold">Iniciar Sesión</a>
                </p>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer class="footer position-absolute bottom-2 py-2 w-100">
      <div class="container">
        <div class="row align-items-center justify-content-lg-between">
          <div class="col-12 my-auto">
            <div class="copyright text-center text-sm text-white text-lg-start">
                © <script>
                  document.write(new Date().getFullYear())
                </script>,
                Todos los derechos reservados. Hecho por
                <a href="#" class="font-weight-bold text-white">Christopher PS</a>
                y <a href="#" class="font-weight-bold text-white">Jhafet Canepa</a>.
            </div>
          </div>
        </div>
      </div>
    </footer>
  </div>
  <!--   Core JS Files   -->
  <script src="../js/register/popper.min.js" type="text/javascript"></script>
  <script src="../js/register/bootstrap.min.js" type="text/javascript"></script>
  <script src="../js/register/perfect-scrollbar.min.js"></script>
  <!--  Plugin for Parallax, full documentation here: https://github.com/wagerfield/parallax  -->
  <script src="../js/register/parallax.min.js"></script>
  <!-- Control Center for Material UI Kit: parallax effects, scripts for the example pages etc -->
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDTTfWur0PDbZWPr7Pmq8K3jiDp0_xUziI"></script>
  <script src="../js/register/material-kit.min.js?v=3.0.0" type="text/javascript"></script>
  <script>
  function maxLengthCheck(object)
  {
    if (object.value.length > object.maxLength)
      object.value = object.value.slice(99, object.maxLength)
  }
</script>
  <script>
  function maxLengthCheck2(object)
  {
    if (object.value.length > object.maxLength)
      object.value = object.value.slice(99999999, object.maxLength)
  }
</script>
</body>
</html>