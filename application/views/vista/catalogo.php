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
		<a type="button" class="btn btn-default btn-lg" onclick="window.location='<?php echo site_url("Controlador/boton1");?>'"><b>Inicio sesión</b></a>
		<a type="button" class="btn btn-default btn-lg" onclick="window.location='<?php echo site_url("Controlador/boton1");?>'"><b>Comprar</b></a>
</div>

<!-- -->
     
<table width="100%" height="300%" > 
<tr> 
<td><center><img src="fotitos/molida.jpg" class="img-circle" width="50%" height="50%"><center><h4><b>Carne Molida : $1600 el kilo </h4></td>
<td><center><img src="fotitos/liso.png" class="img-circle" width="50%" height="75%"><h4><b>Lomo Liso: $3740 el kilo <b> </h4></td>
</tr>
<tr>
<td><center><img src="fotitos/filete.png" class="img-circle" width="50%" height="99%"><center><h4><b> filete : $5000 el kilo </h4></td>
<td><center><img src="fotitos/vetado.jpg" class="img-circle" width="50%" height="80%"><center><h4><b> Lomo vetado: $3340 el kilo </h4></td>
</tr>
<tr>
<td><center><img src="fotitos/chuleta.jpg" class="img-circle" width="50%" height="50%"><center><h4><b> Chuleta de cerdo: $1600 el kilo </h4></td>
<td><center><img src="fotitos/postar.jpg" class="img-circle" width="51%" height="51%"><center><h4><b> Posta rosada : $1600 el kilo </h4></td>
</tr>
<tr>
<td><center><img src="fotitos/postan.jpg" class="img-circle" width="50%" height="85%"><center><h4><b> Posta negra : $1600 el kilo </h4></td>
<td><center><img src="fotitos/aciento.jpg" class="img-circle" width="50%" height="85%"><center><h4><b> Aciento picana: $1600 el kilo </h4></td>
</tr>
</table>
</body>