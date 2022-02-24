<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="icon" type="image/png" href="../img/logo-salvando-patitas.png">
	<title>Salvando Patitas | Perfil</title>
	<link rel="stylesheet" href="../css/perfil.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  	<link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body class="g-sidenav-show bg-gray-200">
    <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3 bg-gradient-dark" id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-2" href="mascota?action=Volver">
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
            <a class="nav-link text-white">
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
            <a class="nav-link text-white active bg-gradient-primary">
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
    <div class="sidenav-footer position-absolute w-100 bottom-0">
      <div class="mx-3">
        <a class="btn bg-gradient-primary mt-4 w-100" href="#" type="button">Nosotros</a>
      </div>
    </div>
  </aside>
  <div class="main-content position-relative bg-gray-200 max-height-vh-100 h-100">
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
      <div class="container-fluid py-1 px-3">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark">Mi Usuario</a></li>
            <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Perfil</li>
          </ol>
          <h6 class="font-weight-bolder mb-0">Perfil</h6>
        </nav>
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          	 <div class="ms-md-auto pe-md-3 d-flex align-items-center"></div>
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
    <div class="container-fluid px-2 px-md-4">
      <div class="page-header min-height-300 border-radius-xl mt-4" style="background-image: url('https://images.unsplash.com/photo-1531512073830-ba890ca4eba2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1920&q=80');">
        <span class="mask  bg-gradient-primary opacity-6"></span>
      </div>
      <div class="card card-body mx-3 mx-md-4 mt-n6">
        <div class="row gx-4 mb-2">
          <div class="col-auto">
            <div class="avatar avatar-xl position-relative">
              <img src="../img/perfil-usuario.png" alt="profile_image" class="w-100 border-radius-lg shadow-sm">
            </div>
          </div>
          <div class="col-auto my-auto">
            <div class="h-100">
              <h5 class="mb-1">${user.nombre} ${user.apellido}</h5>
              <p class="mb-0 font-weight-normal text-sm">${user.apodo}</p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="row">
            <div class="col-12 col-xl-4">
              <div class="card card-plain h-100">
                <div class="card-header pb-0 p-3 mb-3">
                  <div class="row">
                    <div class="col-md-8 d-flex align-items-center">
                      <h6 class="mb-0">Información personal</h6>
                    </div>
                    <div class="col-md-4 text-end">
                      <a href="javascript:;">
                        <i class="fas fa-user-edit text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" title="Editar Perfil"></i>
                      </a>
                    </div>
                  </div>
                </div>
                <div class="card-body p-3">
                  <ul class="list-group">
                    <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">Mi nombre:</strong> &nbsp; ${user.nombre}.</li>
                    <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Mi apellido:</strong> &nbsp; ${user.apellido}.</li>
                    <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Género:</strong> &nbsp; ${user.sexo}.</li>
                    <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Edad:</strong> &nbsp; Tengo ${user.edad} años.</li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-12 col-xl-4">
                <div class="card card-plain h-100">
                  <div class="card-header pb-0 p-3 mb-3">
                    <div class="row">
                      <div class="col-md-8 d-flex align-items-center">
                        <h6 class="mb-0">Mis datos de contacto</h6>
                      </div>
                      <div class="col-md-4 text-end">
                        <a href="javascript:;">
                          <i class="fas fa-user-edit text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" title="Editar Perfil"></i>
                        </a>
                      </div>
                    </div>
                  </div>
                  <div class="card-body p-3">
                    <ul class="list-group">
                      <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">Teléfono:</strong> &nbsp; ${user.telefono}</li>
                      <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Correo:</strong> &nbsp; ${user.correo}</li>
                      <p class="text-sm mb-2 pt-3"><strong class="text-dark">Mi descripción:</strong></p>
                      <p class="text-sm">${user.descripcion}</p>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-12 col-xl-4">
                <div class="card card-plain h-100">
                  <div class="card-header pb-0 p-3 mb-3">
                    <div class="row">
                      <div class="col-md-8 d-flex align-items-center">
                        <h6 class="mb-0">Datos adicionales</h6>
                      </div>
                      <div class="col-md-4 text-end">
                        <a href="javascript:;">
                          <i class="fas fa-user-edit text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" title="Editar Perfil"></i>
                        </a>
                      </div>
                    </div>
                  </div>
                  <div class="card-body p-3">
                    <ul class="list-group">
                      <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">Mi DNI:</strong> &nbsp; ${user.dni}</li>
                      <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Mis estudios:</strong> &nbsp; ${user.estudios}.</li>
                      <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Mi rol:</strong> &nbsp; Tu rol actual es: <span style="color: #EAB412; font-weight: 500;">${user.rol}</span>.</li>
                    </ul>
                  </div>
                </div>
              </div>
            <div class="col-12 mt-4">
              <div class="mb-5 ps-3">
                <h6 class="mb-1">Nuestros Blogs</h6>
                <p class="text-sm">Si quieres saber un poco más de información respecto a la empresa Salvando Patitas, visita nuestros blogs que tenemos disponibles para tí.</p>
              </div>
              <div class="row">
                <div class="col-xl-3 col-md-6 mb-xl-0 mb-4">
                  <div class="card card-blog card-plain">
                    <div class="card-header p-0 mt-n4 mx-3">
                      <a class="d-block shadow-xl border-radius-xl">
                        <img src="../img/background07.jpg" alt="img-blur-shadow" class="img-fluid shadow border-radius-xl">
                      </a>
                    </div>
                    <div class="card-body p-3">
                      <p class="mb-0 text-sm">Blog #1</p>
                      <a>
                        <h5>
                            ¿Cómo surgieron las instituciones?
                        </h5>
                      </a>
                      <p class="mb-4 text-sm">En nuestras reuniones, tuvimos la idea de trabajar con las instituciones. Estas instituciones son como unas campañas
                          o un grupo de personas que...
                      </p>
                      <div class="d-flex align-items-center justify-content-between">
                        <button type="button" class="btn btn-outline-primary btn-sm mb-0">Visitar blog</button>
                        <div class="avatar-group mt-2">
                            <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Peterson">
                              <img alt="Image placeholder" src="../img/team-1.jpg">
                            </a>
                            <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Nick Daniel">
                              <img alt="Image placeholder" src="../img/team-2.jpg">
                            </a>
                            <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ryan Milly">
                              <img alt="Image placeholder" src="../img/team-3.jpg">
                            </a>
                            <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Elena Morison">
                              <img alt="Image placeholder" src="../img/team-4.jpg">
                            </a>
                          </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-3 col-md-6 mb-xl-0 mb-4">
                  <div class="card card-blog card-plain">
                    <div class="card-header p-0 mt-n4 mx-3">
                      <a class="d-block shadow-xl border-radius-xl">
                        <img src="../img/background09.jpg" alt="img-blur-shadow" class="img-fluid shadow border-radius-lg">
                      </a>
                    </div>
                    <div class="card-body p-3">
                      <p class="mb-0 text-sm">Blog #2</p>
                      <a">
                        <h5>¿Donde decidimos empezar?</h5>
                      </a>
                      <p class="mb-4 text-sm">Así como una empresa comienza a crecer, siempre tendrá un lugar en donde comenzar, en nuestro caso, decidimos empezar de manera
                          remota, para..</p>
                      <div class="d-flex align-items-center justify-content-between">
                        <button type="button" class="btn btn-outline-primary btn-sm mb-0">Visitar blog</button>
                        <div class="avatar-group mt-2">
                            <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Peterson">
                              <img alt="Image placeholder" src="../img/team-1.jpg">
                            </a>
                            <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Nick Daniel">
                              <img alt="Image placeholder" src="../img/team-2.jpg">
                            </a>
                            <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ryan Milly">
                              <img alt="Image placeholder" src="../img/team-3.jpg">
                            </a>
                            <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Elena Morison">
                              <img alt="Image placeholder" src="../img/team-4.jpg">
                            </a>
                          </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-3 col-md-6 mb-xl-0 mb-4">
                  <div class="card card-blog card-plain">
                    <div class="card-header p-0 mt-n4 mx-3">
                      <a class="d-block shadow-xl border-radius-xl">
                        <img src="../img/background10.jpg" alt="img-blur-shadow" class="img-fluid shadow border-radius-xl">
                      </a>
                    </div>
                    <div class="card-body p-3">
                      <p class="mb-0 text-sm">Blog #3</p>
                      <a>
                        <h5>Nuestro ambiente laboral</h5>
                      </a>
                      <p class="mb-4 text-sm">Somos un grupo de personas que laboramos con solamente un objetivo, es cuidar y darles un buen hogar a las mascotas,
                          y sí, esto es solo...</p>
                      <div class="d-flex align-items-center justify-content-between">
                        <button type="button" class="btn btn-outline-primary btn-sm mb-0">Visitar blog</button>
                        <div class="avatar-group mt-2">
                          <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Peterson">
                            <img alt="Image placeholder" src="../img/team-1.jpg">
                          </a>
                          <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Nick Daniel">
                            <img alt="Image placeholder" src="../img/team-2.jpg">
                          </a>
                          <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ryan Milly">
                            <img alt="Image placeholder" src="../img/team-3.jpg">
                          </a>
                          <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Elena Morison">
                            <img alt="Image placeholder" src="../img/team-4.jpg">
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-3 col-md-6 mb-xl-0 mb-4">
                  <div class="card card-blog card-plain">
                    <div class="card-header p-0 mt-n4 mx-3">
                      <a class="d-block shadow-xl border-radius-xl">
                        <img src="../img/background11.jpg" alt="img-blur-shadow" class="img-fluid shadow border-radius-xl">
                      </a>
                    </div>
                    <div class="card-body p-3">
                      <p class="mb-0 text-sm">Blog #4</p>
                      <a>
                        <h5>La comunidad aumenta</h5>
                      </a>
                      <p class="mb-4 text-sm">Nuestra comunidad está en pleno crecimiento con la ayuda de ustedes, esto es una buena noticia más que nada
                          para los animales que necesitan ayuda de..</p>
                      <div class="d-flex align-items-center justify-content-between">
                        <button type="button" class="btn btn-outline-primary btn-sm mb-0">Visitar blog</button>
                        <div class="avatar-group mt-2">
                            <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Peterson">
                              <img alt="Image placeholder" src="../img/team-1.jpg">
                            </a>
                            <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Nick Daniel">
                              <img alt="Image placeholder" src="../img/team-2.jpg">
                            </a>
                            <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ryan Milly">
                              <img alt="Image placeholder" src="../img/team-3.jpg">
                            </a>
                            <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Elena Morison">
                              <img alt="Image placeholder" src="../img/team-4.jpg">
                            </a>
                          </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
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
       </div>
     </footer>
    </div>
  </div>
  <div class="fixed-plugin">
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
  <script src="../js/perfil/popper.min.js"></script>
  <script src="../js/perfil/bootstrap.min.js"></script>
  <script src="../js/perfil/perfect-scrollbar.min.js"></script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../js/perfil/material-dashboard.min.js?v=3.0.0"></script>
</body>
</html>