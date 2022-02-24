<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="icon" type="image/png" href="../img/logo-salvando-patitas.png">
	<title>Salvando Patitas | Añadir Publicación</title>
	<link rel="stylesheet" href="../css/añadir-mascota.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  	<link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body class="blog-author bg-gray-200">
  <!-- -------- START HEADER 4 w/ search book a ticket form ------- -->
  <header class="bg-gradient-dark">
    <div class="page-header min-vh-75" style="background-image: url('../img/background06.jpg');">
      <span class="mask bg-gradient-dark opacity-6"></span>
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8 text-center mx-auto my-auto">
            <h1 class="text-white" style="margin-top: -40px;">Añade tu institución</h1>
            <p class="lead mb-4 mt-4 text-white opacity-8">Organiza y forma tu propia institución, recuerda que cualquier persona de la comunidad "Salvando Patitas" podrá pertenecer a tu institución.</p>
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
  <!-- -------- END HEADER 4 w/ search book a ticket form ------- -->
  <div class="card card-body mx-3 mx-md-4 mt-n6 mb-4">
    <!-- START Testimonials w/ user image & text & info -->
    <section class="py-sm-4 position-relative mt-5">
        <div class="container">
            <div class="card box-shadow-xl overflow-hidden mb-5">
                <div class="row">
                    <div class="col-lg-5 position-relative bg-cover px-0" style="background-image: url('../img/background08.jpg')" loading="lazy">
                    <div class="z-index-2 text-center d-flex h-100 w-100 d-flex m-auto justify-content-center">
                        <div class="mask bg-gradient-dark opacity-8"></div>
                        <div class="p-7 ps-sm-7 position-relative text-start my-auto z-index-2">
                            <h3 class="text-white">Contáctanos</h3>
                            <p class="text-white opacity-8 mb-4">Si te quieres poner en contacto con nosotros, te dejamos nuestros siguientes datos.</p>
                            <div class="d-flex p-2 text-white">
                                <div>
                                  <i class="fas fa-phone text-sm"></i>
                                </div>
                                <div class="ps-3">
                                  <span class="text-sm opacity-8">+51 973 182 294</span>
                                </div>
                            </div>
                            <div class="d-flex p-2 text-white">
                                <div>
                                  <i class="fas fa-envelope text-sm"></i>
                                </div>
                                <div class="ps-3">
                                  <span class="text-sm opacity-8"><a href="mailto:cris_antonio2001@hotmail.com" class="text-white">cris_antonio2001@hotmail.com</a></span>
                                </div>
                            </div>
                            <div class="d-flex p-2 text-white">
                                <div>
                                  <i class="fas fa-map-marker-alt text-sm"></i>
                                </div>
                                <div class="ps-3">
                                  <span class="text-sm opacity-8">Somos de La Molina, Lima, Perú.</span>
                                </div>
                            </div>
                            <div class="mt-4">
                                <button type="button" class="btn btn-icon-only btn-link text-white btn-lg mb-0" data-toggle="tooltip" data-placement="bottom" data-original-title="Log in with Facebook">
                                  <a href="https://www.facebook.com/cris223511/"><i class="fab fa-facebook text-lg text-white me-4"></i></a>
                                </button>
                                <button type="button" class="btn btn-icon-only btn-link text-white btn-lg mb-0" data-toggle="tooltip" data-placement="bottom" data-original-title="Log in with Twitter">
                                  <a href="https://www.instagram.com/chris.antps_18/"><i class="fab fa-instagram text-lg text-white me-4"></i></a>
                                </button>
                                <button type="button" class="btn btn-icon-only btn-link text-white btn-lg mb-0" data-toggle="tooltip" data-placement="bottom" data-original-title="Log in with Dribbble">
                                  <a href="https://github.com/jafcn09/Mascotas"><i class="fas fa-code white-text text-lg text-white me-4"></i></a>
                                </button>
                                <button type="button" class="btn btn-icon-only btn-link text-white btn-lg mb-0" data-toggle="tooltip" data-placement="bottom" data-original-title="Log in with Instagram">
                                  <a href="https://github.com/Cris223511"><i class="fab fa-github text-lg text-white"></i></a>
                                </button>
                            </div>
                        </div>
                    </div>
                    </div>
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
        </div>
    </section>
    <!-- END Testimonials w/ user image & text & info -->
  </div>
  <!-- -------- START FOOTER 5 w/ DARK BACKGROUND ------- -->
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
  <!-- -------- END FOOTER 5 w/ DARK BACKGROUND ------- -->
  <!--   Core JS Files   -->
  <script src="../js/añadir-mascota/popper.min.js" type="text/javascript"></script>
  <script src="../js/añadir-mascota/bootstrap.min.js" type="text/javascript"></script>
  <script src="../js/añadir-mascota/perfect-scrollbar.min.js"></script>
  <!--  Plugin for Parallax, full documentation here: https://github.com/wagerfield/parallax  -->
  <script src="../js/añadir-mascota/parallax.min.js"></script>
  <!-- Control Center for Material UI Kit: parallax effects, scripts for the example pages etc -->
  <script src="../js/añadir-mascota/material-kit.min.js?v=3.0.0" type="text/javascript"></script>

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