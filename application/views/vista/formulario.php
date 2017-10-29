<html>
<body>
<?= form_open("/controlador/recibirdatos") ?>



<?php

    $username = array(
    	'name' => 'username',
    	'placeholder' => 'Escribe tu nombre de usuario'
    );
    $password = array( 
        'name' => 'password',
        'placeholder' => 'Escribe tu contraseñ6a',
        'type' => 'password'
    );
	$rut = array(
		'name' => 'rut',
		'placeholder' => 'Escribe tu rut sin guion ni puntos'
	);
	$nombre = array(
		'name' => 'nombre',
		'placeholder' => 'Escribe tu nombre'
	);
	$apellido = array(
		'name' => 'apellido',
		'placeholder' => 'Escribe tu apellido'
	);
	$telefono = array(
		'name' => 'telefono',
		'placeholder' => 'Escribe tu telefono'
	);
	$direccion = array(
		'name' => 'direccion',
		'placeholder' => 'Escribe tu direccion'
	);
	$sexo = array(
		'name' => 'sexo',
		'placeholder' => 'Escribe tu sexo M o F'
	);
	$edad = array(
		'name' => 'edad',
		'placeholder' => 'Escribe tu edad'
	);
	$email = array(
		'name' => 'email',
		'placeholder' => 'Escribe tu email',
		'type' => 'email'
	);
?>

<div align ="center">
<form class="form-inline">
    <div class="form-group">
        <label>
            Nombre de usuario:
            <?=form_input($username) ?>
        </label>
    </div>
    <div class="form-group">
        <label>
            Contraseña:
            <?=form_input($password) ?>
        </label>
    </div>
    <div class="form-group">
        <label> 
            Rut:
            <?= form_input($rut) ?>
        </label>
    </div>
    <div class="form-group">
        <label> 
            Nombre:
            <?= form_input($nombre) ?>
        </label>
    </div>
    <div class="form-group">
        <label> 
            Apellido:
            <?= form_input($apellido) ?>
        </label>
    </div>
    <div class="form-group">
        <label> 
            Telefono:
            <?= form_input($telefono) ?>
        </label>
    </div>
    <div class="form-group">
        <label> 
            Direccion:
            <?= form_input($direccion) ?>
        </label>
    </div>
    <div class="form-group">
        <label> 
            Edad:
            <?= form_input($edad) ?>
        </label>
    </div>
    <div class="form-group">
        <label> 
            Sexo:
            <!--<?= form_input($sexo) ?>-->
            <select name="sexo">
                <option value="Hombre">Hombre</option>
                <option value="Mujer">Mujer</option>
            </select>
        </label>
    </div>
    <div class="form-group">
        <label> 
            Email:
            <?= form_input($email) ?>
        </label>
    </div>
<br><br>

<button type="submit" class="btn btn-success"> Registarme </button>
<?php= form_close() ?>
</form>
</body>
</html>

<!--<?= form_submit('','Registrarse') ?>-->