<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="icon" type="image/png" href="../img/logo-salvando-patitas.png">
	<title>Salvando Patitas | Ver Mascota</title>
	<link rel="stylesheet" href="../css/ver-mascota.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  	<link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body class="about-us bg-gray-200">

  <!-- -------- START HEADER 7 w/ text and video ------- -->
  <header class="bg-gradient-dark">
    <div class="page-header min-vh-75" style="background-image: url('../img/background03.jpg');">
      <span class="mask bg-gradient-dark opacity-6"></span>
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8 text-center mx-auto my-auto">
            <h1 class="text-white" style="margin-top: -40px;">Estás a un paso para salvar a un animal</h1>
            <p class="lead mb-4 mt-4 text-white opacity-8">A continuación, podrás visualizar la información de la mascota que seleccionaste</p>
            <form  method="post" action="../views/mascota">
              <button type="submit" value="Volver" class="btn bg-white text-dark mt-2" name="action">Volver al inicio</button>
            </form>
            <h6 class="text-white mb-3 mt-5">Conoce más de nosotros</h6>
            <div class="d-flex justify-content-center">
              <a href="https://www.facebook.com/cris223511/"><i class="fab fa-facebook text-lg text-white me-4"></i></a>
              <a href="https://www.instagram.com/chris.antps_18/"><i class="fab fa-instagram text-lg text-white me-4"></i></a>
              <a href="https://github.com/jafcn09/Mascotas"><i class="fas fa-code white-text text-lg text-white me-4"></i></a>
              <a href="https://github.com/Cris223511"><i class="fab fa-github text-lg text-white"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
  <!-- -------- END HEADER ------- -->
  <div class="card card-body shadow-xl mx-3 mx-md-4 mt-n6">
    <!-- Section with four info areas left & one card right with image and waves -->
    <section class="py-7">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6">
            <div class="row justify-content-start">
              <div class="col-md-6">
                <div class="info">
                    <i class="text-3xl text-gradient text-warning mb-3 fa-solid fa-clipboard-list"></i>
                  <h5>Nombre</h5>
                  <p>El nombre de la mascota es ${mascota.nombreMascota}.</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info">
                    <i class="text-3xl text-gradient text-warning mb-3 fa-solid fa-calendar-days"></i>
                  <h5>Edad</h5>
                  <p>Su edad es de ${mascota.edad} años.</p>
                </div>
              </div>
            </div>
            <div class="row justify-content-start mt-4">
              <div class="col-md-6">
                <div class="info">
                    <i class="text-3xl text-gradient text-warning mb-3 fa-solid fa-dog"></i>
                  <h5>Estatura</h5>
                  <p>Su estatura es de ${mascota.estatura} cm.</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info">
                    <i class="text-3xl text-gradient text-warning mb-3 fa-solid fa-paw"></i>
                  <h5>Raza</h5>
                  <p>La raza de esta mascota es ${mascota.tipoMascota}.</p>
                </div>
              </div>
            </div>
            <div class="row justify-content-start mt-4">
                <div class="col-md-6">
                  <div class="info">
                    <i class="text-3xl text-gradient text-warning mb-3 fa-solid fa-location-dot"></i>
                    <h5>Ubicación exacta</h5>
                    <p>La ubicacion de esta mascota queda exactamente en ${mascota.ubicacion}.</p>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="info">
                    <i class="text-3xl text-gradient text-warning mb-3 fa-solid fa-briefcase-medical"></i>
                    <h5>Estado / control médico</h5>
                    <p>El estado o control médico de la mascota es: ${mascota.controlMedico}.</p>
                  </div>
                </div>
              </div>
          </div>
          <div class="col-lg-4 ms-auto mt-lg-0 mt-5">
            <div class="card mt-5">
              <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                <a class="d-block blur-shadow-image">
                  <img src="../img/background01.jpg" alt="img-colored-shadow" class="img-fluid border-radius-lg">
                </a>
              </div>
              <div class="card-body text-center">
                <h5 class="font-weight-normal">
                  <a href="#">Salva a este animal</a>
                </h5>
                <p class="mb-0">
                  Recuerda que cuando estés reservando a una mascota, estás aceptando nuestros términos y condiciones. Protégelos, cuidalos y dales bastante amor. Equipo <span style="color: #EAB412; font-weight: 500;">Salvando Patitas.</span>
                </p>
                 <form  method="post" action="../views/mascota">
	                <c:if test="${mascota.estado == false}">
						<a class="btn bg-gradient-info btn-sm mb-0 mt-4 mb-2 mx-1" href="mascota?action=reservar&idMascota=${mascota.idMascota}&idUsuario=${user.idUsuario}" role="button" onclick="return confirm('Se va a proceder a reservar la mascota llamada ${mascota.nombreMascota}. ¿Desea continuar?')">Reservar</a>
					</c:if>
					<c:if test="${mascota.estado == true}">
						<a class="btn bg-gradient-primary btn-sm mb-0 mt-4 mb-2 mx-1" role="button">Reservado</a>
					</c:if>
	              <button type="submit" value="Volver" class="btn bg-gradient-warning btn-sm mb-0 mt-4 mb-2 mx-1" name="action">Volver</button>
                 </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- END Section with four info areas left & one card right with image and waves -->
    <!-- -------- END PRE-FOOTER 1 w/ SUBSCRIBE BUTTON AND IMAGE ------- -->
  </div>
  <footer class="footer mt-5 mb-5">
    <div class="container">
      <div class=" row">
        <div class="copyright text-center text-sm text-muted text-lg-start">
            © <script>
              document.write(new Date().getFullYear())
            </script>,
            Todos los derechos reservados. Hecho por
            <a href="#" class="font-weight-bold" target="_blank">Christopher PS</a>
            y <a href="#" class="font-weight-bold" target="_blank">Jhafet Canepa</a>.
          </div>
        </div>
    </div>
  </footer>
  <!--   Core JS Files   -->
  <script src="../js/ver-mascota/material-kit.min.js?v=3.0.0" type="text/javascript"></script>
  <script>
    // get the element to animate
    var element = document.getElementById('count-stats');
    var elementHeight = element.clientHeight;

    // listen for scroll event and call animate function

    document.addEventListener('scroll', animate);

    // check if element is in view
    function inView() {
      // get window height
      var windowHeight = window.innerHeight;
      // get number of pixels that the document is scrolled
      var scrollY = window.scrollY || window.pageYOffset;
      // get current scroll position (distance from the top of the page to the bottom of the current viewport)
      var scrollPosition = scrollY + windowHeight;
      // get element position (distance from the top of the page to the bottom of the element)
      var elementPosition = element.getBoundingClientRect().top + scrollY + elementHeight;

      // is scroll position greater than element position? (is element in view?)
      if (scrollPosition > elementPosition) {
        return true;
      }

      return false;
    }

    var animateComplete = true;
    // animate element when it is in view
    function animate() {

      // is element in view?
      if (inView()) {
        if (animateComplete) {
          if (document.getElementById('state1')) {
            const countUp = new CountUp('state1', document.getElementById("state1").getAttribute("countTo"));
            if (!countUp.error) {
              countUp.start();
            } else {
              console.error(countUp.error);
            }
          }
          if (document.getElementById('state2')) {
            const countUp1 = new CountUp('state2', document.getElementById("state2").getAttribute("countTo"));
            if (!countUp1.error) {
              countUp1.start();
            } else {
              console.error(countUp1.error);
            }
          }
          if (document.getElementById('state3')) {
            const countUp2 = new CountUp('state3', document.getElementById("state3").getAttribute("countTo"));
            if (!countUp2.error) {
              countUp2.start();
            } else {
              console.error(countUp2.error);
            };
          }
          animateComplete = false;
        }
      }
    }

    if (document.getElementById('typed')) {
      var typed = new Typed("#typed", {
        stringsElement: '#typed-strings',
        typeSpeed: 90,
        backSpeed: 90,
        backDelay: 200,
        startDelay: 500,
        loop: true
      });
    }
  </script>
  <script>
    if (document.getElementsByClassName('page-header')) {
      window.onscroll = debounce(function() {
        var scrollPosition = window.pageYOffset;
        var bgParallax = document.querySelector('.page-header');
        var oVal = (window.scrollY / 3);
        bgParallax.style.transform = 'translate3d(0,' + oVal + 'px,0)';
      }, 6);
    }
  </script>
</body>
</html>