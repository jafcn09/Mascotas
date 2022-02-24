<%@page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="icon" type="image/png" href="../img/logo-salvando-patitas.png">
	<title>Salvando Patitas | Instituciones</title>
	<link rel="stylesheet" href="../css/instituciones.css">
	<link rel="stylesheet" href="../css/home.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  	<link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<body class="g-sidenav-show bg-gray-200">
<aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">
        <div class="sidenav-header">
          <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
          <a class="navbar-brand m-2" target="_blank">
            <img src="../img/logo-salvando-patitas.png" class="navbar-brand-img h-100" alt="main_logo">
            <span class="ms-1 font-weight-bold text-white">Salvando Patitas</span>
          </a>
        </div>
        <hr class="horizontal light mt-0 mb-2">
        <div class="collapse navbar-collapse w-auto max-height-vh-100" id="sidenav-collapse-main">
          <ul class="navbar-nav">
        <li class="nav-item mt-3">
          <h6 class="ps-4 ms-2 text-uppercase text-xs text-white font-weight-bolder opacity-8">Principal</h6>
        </li>
        <li class="nav-item">
          <form  method="post" action="../views/mascota">
            <a class="nav-link text-white">
              <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                <i class="material-icons opacity-10">dashboard</i>
              </div>
              <input type="submit" value="Mascotas" class="btn text-white mb-0 mt-0 w-100" name="action">
            </a>
          </form>
        </li>
        <li class="nav-item">
           <form  method="post" action="../views/institucion">
            <a class="nav-link text-white active bg-gradient-primary">
              <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                <i class="material-icons opacity-10">receipt_long</i>
              </div>
              <input type="submit" value="Instituciones" class="btn text-white mb-0 mt-0 w-100" name="action">
            </a>
          </form>
        </li>
        <li class="nav-item mt-3">
          <h6 class="ps-4 ms-2 text-uppercase text-xs text-white font-weight-bolder opacity-8">Mi Usuario</h6>
        </li>
        <li class="nav-item">
         <form method="post" action="../views/institucion">
            <a class="nav-link text-white">
              <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                <i class="material-icons opacity-10">person</i>
              </div>
              <input type="submit" value="Perfil" class="btn text-white mb-0 mt-0 w-100" name="action">
            </a>
         </form>
        </li>
        <li class="nav-item mt-3">
          <h6 class="ps-4 ms-2 text-uppercase text-xs text-white font-weight-bolder opacity-8">Sistema</h6>
        </li>
        <li class="nav-item">
          <form  method="post" action="../views/usuario">
           <a class="nav-link text-white">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">login</i>
            </div>
            <input type="submit" value="Cerrar sesión" class="btn text-white mb-0 mt-0 w-100" name="action">
           </a>
         </form>
        </li>
      </ul>
        </div>
        <div class="sidenav-footer position-absolute w-100 bottom-0 ">
          <div class="mx-3">
            <a class="btn bg-gradient-primary mt-4 w-100" href="#" type="button">Nosotros</a>
          </div>
        </div>
      </aside>
  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
        <div class="container-fluid py-1 px-3">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
              <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Principal</a></li>
              <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Instituciones</li>
            </ol>
            <h6 class="font-weight-bolder mb-0">Instituciones</h6>
          </nav>
          <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          	 <div class="ms-md-auto pe-md-3 d-flex align-items-center">
          	   <form method="post" action="../views/institucion">
	              <div class="input-group input-group-outline">
	                <label class="form-label" style="font-size:13px">Buscar</label>
	                <input type="text" class="form-control" id="query" name="query">
	                <input type="hidden" name="action" value="listar"/>
	                <button type="submit" class="btn bg-gradient-info botones mt-0 mb-0 w-40">Buscar</button>
	              </div>
	          </form>
	        </div>
          <ul class="navbar-nav  justify-content-end">
            <li class="nav-item d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body font-weight-bold px-0">
                <i class="fa fa-user me-sm-1"></i>Bienvenido: ${user.nombre}
              </a>
            </li>
            <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body p-0" id="iconNavbarSidenav">
                <div class="sidenav-toggler-inner">
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                </div>
              </a>
            </li>
            <li class="nav-item px-3 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body p-0">
                <i class="fa fa-cog fixed-plugin-button-nav cursor-pointer"></i>
              </a>
            </li>
          </ul>
        </div>
        </div>
      </nav>
    <!-- End Navbar -->
    
    <div class="container-fluid py-4">
    <!-- Start Table -->
      <div class="row">
        <div class="col-12">
          <div class="card my-4">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
              <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                <h6 class="text-white text-capitalize ps-3">Instituciones Disponibles</h6>
              </div>
            </div>
            <div class="card-body px-0 pb-2">
              <div class="table-responsive p-0">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Título</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Objetivo</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Ubicación</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Funciones</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach items="${instituciones}" var="institucion">
                    <tr>
                      <td>
                        <div class="d-flex px-2 py-3">
                          <div>
                            <img src="../img/logo-salvando-patitas.png" class="avatar avatar-sm me-3 border-radius-lg" alt="institucion">
                          </div>
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">${institucion.titulo}</h6>
                          </div>
                        </div>
                      </td>
                      <td>
                        <p class="text-xs text-secondary mb-0">${institucion.objetivo}</p>
                      </td>
                      <td>
                        <p class="text-xs text-secondary mb-0">${institucion.ubicacion}</p>
                      </td>
                      <td class="align-middle">
                        <a class="btn bg-gradient-warning btn-sm mb-0 mt-0" href="institucion?action=ver&idInstitucion=${institucion.idInstitucion}" role="button" type="button">Ver más</a>
                      	<c:if test="${user.rol.equals('admin')}">
                            <a class="btn bg-gradient-success btn-sm mb-0 mt-0" href="institucion?action=ver&idInstitucion=${institucion.idInstitucion}" role="button" type="button">Actualizar</a>
							<a class="btn bg-gradient-primary btn-sm mb-0 mt-0" href="institucion?action=eliminar&idInstitucion=${institucion.idInstitucion}" role="button" onclick="return confirm('Se va a proceder a la eliminación de la institución llamada ${institucion.titulo}. ¿Desea continuar?')" type="button">Eliminar</a>
						</c:if>
                      </td>
                    </tr>
                    </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End Table -->
      <footer class="footer py-4">
        <div class="container-fluid">
          <div class="row align-items-center justify-content-lg-between">
            <div class="col-lg-6 mb-lg-0 mb-4">
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
    </div>
  </main>
  <div class="fixed-plugin">
    <form  method="post" action="../views/institucion">
	 <button type="submit" class="fixed-plugin-button-2 text-dark position-fixed px-3 py-2" value="addInstitucion" style="border: none;" name="action">
	    <i class="fas fa-plus"></i>
	 </button>
    </form>
    <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
      <i class="material-icons py-2">settings</i>
    </a>
    <div class="card shadow-lg">
      <div class="card-header pb-0 pt-3">
        <div class="float-start">
          <h5 class="mt-3 mb-0">Personalizar</h5>
          <p>Puedes modificar el diseño de tu panel.</p>
        </div>
        <div class="float-end mt-4">
          <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
            <i class="material-icons">clear</i>
          </button>
        </div>
        <!-- End Toggle Button -->
      </div>
      <hr class="horizontal dark my-1">
      <div class="card-body pt-sm-3 pt-0">
        <!-- Sidebar Backgrounds -->
        <div>
          <h6 class="mb-0">Color de barra de navegación</h6>
        </div>
        <a href="javascript:void(0)" class="switch-trigger background-color">
          <div class="badge-colors my-2 text-start">
            <span class="badge filter bg-gradient-primary active" data-color="primary" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-success" data-color="success" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-warning" data-color="warning" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-danger" data-color="danger" onclick="sidebarColor(this)"></span>
          </div>
        </a>
        <!-- Sidenav Type -->
        <div class="mt-3">
          <h6 class="mb-0">Diseño Panel lateral</h6>
          <p class="text-sm">Escoge el diseño del panel lateral.</p>
        </div>
        <div class="d-flex">
            <button class="btn bg-gradient-dark px-3 mb-2 active" data-class="bg-gradient-dark" onclick="sidebarType(this)">Oscuro</button>
            <button class="btn bg-gradient-dark px-3 mb-2 ms-2" data-class="bg-transparent" onclick="sidebarType(this)">Transparente</button>
            <button class="btn bg-gradient-dark px-3 mb-2 ms-2" data-class="bg-white" onclick="sidebarType(this)">Blanco</button>
        </div>
        <p class="text-sm d-xl-none d-block mt-2">Puede cambiar el tipo de panel lateral solo en la vista de escritorio.</p>
        <!-- Navbar Fixed -->
        <div class="mt-3 d-flex">
          <h6 class="mb-0">Navegador Fixed</h6>
          <div class="form-check form-switch ps-0 ms-auto my-auto">
            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed" onclick="navbarFixed(this)">
          </div>
        </div>
        <hr class="horizontal dark my-3">
        <div class="mt-2 d-flex">
          <h6 class="mb-0">Claro / Oscuro</h6>
          <div class="form-check form-switch ps-0 ms-auto my-auto">
            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version" onclick="darkMode(this)">
          </div>
        </div>
        <hr class="horizontal dark my-sm-4">
        <a class="btn btn-outline-dark w-100" href="">Nosotros</a>
        <div class="w-100 text-center">
          <a class="github-button" href="https://github.com/jafcn09/Mascotas" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star creativetimofficial/material-dashboard on GitHub">Star</a>
          <h6 class="mt-3">¡Gracias por llegar hasta aquí!</h6>
          <a href="#" class="btn btn-dark mb-0 me-2" target="_blank">
            <i class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
          </a>
          <a href="#" class="btn btn-dark mb-0 me-2" target="_blank">
            <i class="fab fa-facebook-square me-1" aria-hidden="true"></i> Compartir
          </a>
        </div>
      </div>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="../js/instituciones/popper.min.js"></script>
  <script src="../js/instituciones/bootstrap.min.js"></script>
  <script src="../js/instituciones/perfect-scrollbar.min.js"></script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../js/instituciones/material-dashboard.min.js?v=3.0.0"></script>
</body>
</html>