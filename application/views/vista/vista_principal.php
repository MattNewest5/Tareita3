<body>
<!-- Imagen inicial -->
<img class="img-rounded" src="fotitos/cabecera.jpg" width="100%" height="40%">
<!--Botones -->
 <div class="btn-group btn-group-justified">
		<a type="button" class="btn btn-default btn-lg" onclick="window.location='<?php echo site_url("Controlador/boton1");?>'"><b>Inicio</b></a>
		<a type="button" class="btn btn-default btn-lg" onclick="window.location='<?php echo site_url("Controlador/boton1");?>'"><b>Nuestra historia</b></a>
		<!-- Botón desplegable -->
		<div class="btn-group">
			<button type="button" class="btn btn-default dropdown-toggle btn-lg" data-toggle="dropdown">
			<b>Catalogo</b> <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
			<li><a onclick="window.location='<?php echo site_url("Controlador/boton1");?>'"><b> carnes </b></a></li>
			<? echo anchor ('/Controlador/boton1');?>
			<li><a onclick="window.location='<?php echo site_url("Controlador/boton1");?>'"> <b> pollos </b></a></li>
			<li><a onclick="window.location='<?php echo site_url("Controlador/boton1");?>'"> <b> carne especial </b></a></li>
			</ul>
				</div>
		<!-- -->
		<a type="button" class="btn btn-default btn-lg" onclick="window.location='<?php echo site_url("Controlador/boton1");?>'"><b>Recetas</b></a>
		<a type="button" class="btn btn-default btn-lg" onclick="window.location='<?php echo site_url("Controlador/botonSesion");?>'"><b>Inicio sesión</b></a>
		<a type="button" class="btn btn-default btn-lg" onclick="window.location='<?php echo site_url("Controlador/boton1");?>'"><b>Comprar</b></a>
    <a type="button" class="btn btn-warning btn-lg" onclick="window.location='<?php echo site_url("Controlador/botonregistro");?>'"><b>Registro</b></a>
</div>

	
<br>
<br>

<!-- fotos que van cambiando carrusel-->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" role=listbox>
    <div class="item active">
      <img class="img-rounded" src="fotitos/p3.jpg"  width="100%" height="50%"/>
    </div>
    <div class="item">
      <img class="img-rounded" src="fotitos/p1.jpg" width="100%" height="50%"/>
    </div>

    <div class="item">
      <img class="img-rounded" src="fotitos/p2.jpg" width="100%" height="50%" />
  </div>
  </div>
  <a class="left carousel-control" href="#myCarousel" data-slide="100%">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<!-- -->
  </body>
