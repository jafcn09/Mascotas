<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="icon" type="image/png" href="../img/logo-salvando-patitas.png">
	<title>Salvando Patitas | Editar Institución</title>
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
    <div class="page-header min-vh-75" style="background-image: url('../img/background07.jpg');">
      <span class="mask bg-gradient-dark opacity-6"></span>
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8 text-center mx-auto my-auto">
            <h1 class="text-white" style="margin-top: -40px;">Bienvenido ${user.nombre}</h1>
            <p class="lead mb-4 mt-4 text-white opacity-8">Aquí podrás editar la institución que seleccionaste, sólo los administradores podrán hacerlo.</p>
            <form  method="post" action="../views/institucion">
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
<!-- -------- START Features w/ icons and text on left & gradient title and text on right -------- -->
<section class="py-6">
  <div class="container">
    <div class="row">
      <div class="col-lg-7">
                    <form class="p-3" id="contact-form" method="post" action="../views/institucion">
                      <div class="card-header px-4 py-sm-5 py-3">
                          <h2>Completa el siguiente formulario</h2>
                          <p class="lead">Recuerda seguir la misma estructura que indica cada campo para añadir correctamente.</p>
                      </div>
                        <div class="card-body pt-1">
	                        <div class="row">
	                            <div class="col-md-12 pe-2 mb-3">
	                                <div class="input-group input-group-static mb-4">
	                                    <label for="titulo">¿Cuál es el título?</label>
	                                    <input type="text" class="form-control" id="titulo" name="titulo" maxlength ="40" placeholder="Ejemplo: Salvando Patitas, Mascotas a salvo..." required>
	                                </div>
	                            </div>
	                            <div class="col-md-12 pe-2 mb-3">
	                                <div class="input-group input-group-static mb-4">
	                                    <label for="objetivo">¿Cuál es su objetivo?</label>
	                                    <input type="text" class="form-control" id="objetivo" name="objetivo" maxlength ="80" placeholder="Salvar a los animales, Ser sus héroes..." required>
	                                </div>
	                            </div>
	                            <div class="col-md-12 pe-2 mb-3">
	                                <div class="input-group input-group-static mb-4">
	                                    <label for="ubicacion">¿Cuál es su ubicación?</label>
	                                    <input type="text" class="form-control" id="ubicacion" name="ubicacion" maxlength ="60" placeholder="Ejemplo: Ciudad, Avenida, Calle, Lote, Manzana..." required>
	                                </div>
	                            </div>
	                            <div class="col-md-12 pe-2 mb-3">
	                                <div class="input-group input-group-static mb-4">
	                                    <label for="descripcion">¿Cuál es la descripcion?</label>
	                                    <textarea type="text" class="form-control" id="descripcion" name="descripcion" maxlength ="500" rows="4" placeholder="¿Quienes Somos?, Visión, Misión..." required></textarea>
	                                </div>
	                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 text-end ms-auto">
                              <button type="submit" value="add" class="btn bg-gradient-info mb-0" name="action">Añadir</button>
                            </div>
                        </div>
                        <div class="col-md-12 pe-2 mb-3">
                            <c:if test="${message != null}">
								<div class="alert alert-danger mt-5 text-center text-white" role="alert">
									${message}
								</div>
							</c:if>
                         </div>
                      </div>
                    </form>
                  </div>
    </div>
  </div>
</section>
<!-- -------- END Features w/ icons and text on left & gradient title and text on right -------- -->
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
  <script src="../js/ver-institucion/material-kit.min.js?v=3.0.0" type="text/javascript"></script>
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