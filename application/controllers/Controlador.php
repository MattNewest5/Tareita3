<?php if ( ! defined('BASEPATH')) exit('no direct script basic allowed');

class Controlador extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->helper('url'); 
		$this->load->helper('form');
		$this->load->library('table');
		$this->load->model('modelo');
		$this->load->library('session');
		$this->load->library('form_validation');
		$this->load->database();

	}
	function hola(){ 
	
		$this->load->view('vista/cabecera');
		$this->load->view('vista/vista_principal');
		$this->load->view('vista/footer');
	}
//  Botones
	function boton(){
		$this->load->view('vista/cabecera');
		$this->load-> view('vista/catalogo');
		$this->load->view('vista/footer');
    }
	function boton1(){
		$this->load->view('vista/cabecera');
		$this->load-> view('vista/vista_principal');
		$this->load->view('vista/footer');
	}

	public function botonregistro(){

		$this->load->view('vista/cabecera_formulario');
		$this->load->view('vista/formulario');

	}
	public function botonsesion(){


		$this->load->view('vista/iniciosesion');
	}
// inicio de sesion
	public function index(){
		
		$data = $this->session->all_userdata();
		
		if($this->session->userdata('logueado') == TRUE){
			$this->load->view('vista/vista_principal',$data);
		}

		else{
			$data['formulario_email'] = array('name' => 'usuario',
	            							  'placeholder' => 'Ingrese su username',
	            							  'class'=>'form-control margen' ); 
	        $data['formulario_pass'] = array('name ' => 'pass',
	                                         'placeholder' => 'Ingrese su contraseña',
	                                         'class'=>'form-control margen');
	        $data['boton'] = array('value' => 'Aceptar',
	                               'class'=>'col-lg-4 btn btn-lg btn-primary');
			$this->load->view('vista/vista_principal',$data);
		}
	}




        /* Esto sirve para recibir los datos del formulario!!! 
    function recibirdatos(){
		$data=array(
			'rut' => $this->input->post('rut'),
			'nombre' => $this->input->post('nombre'),
			'apellido' => $this->input->post('apellido'),
			'telefono' => $this->input->post('telefono'),
			'direccion' => $this->input->post('direccion'),
			'sexo' => $this->input->post('sexo'),
			'edad' => $this->input->post('edad'),
			'email' => $this->input->post('email')
		);
		$this->controlador_model->crearCliente($data); 
	}*/

/*	public function inicio_sesion() {
		//datos_query['email_query'] = $this->input->post('email'); //esta metodo recibe el contenido del formulario email
		//Verificación propuesta como desafío :o
		//$this->load->library('session'); //se inicia sesion
		//$this->session->variable='valor de la variable';

		$user = $_POST['usuario'];
		$pass = $_POST['pass'];
		
		$valor = $this->modelo->verificar($user,$pass);

		if($valor != null){
			$todo = $this->modelo->query_cursos();
			$this->table->set_heading('id', 'semestres_id', 'departamento_id','Año','Horario','Nombre', 'codigo','UD');
			$template = array('table_open' => "<table class='table table-striped'>");
			$this->table->set_template($template); 
			$data = array(
				   'tabla' => $this->table->generate($todo),
				   'id' => $valor['id'],
                   'Nombre' => $valor['Nombre'],
                   'Apellido' => $valor['Apellido'],
				   'Direccion' => $valor['Direccion'],
				   'RUT' => $valor['RUT'],
                   'Puntaje_PSU' => $valor['Puntaje_PSU'],
				   'username' => $valor['username'],
				   'password' => $valor['password'],
                   'logueado' => TRUE);		
		$this->session->set_userdata($data);
		$this->load->view('vista/vista_segunda',$data);
		}

	}
} */

	public function inicio_sesion() {
		//datos_query['email_query'] = $this->input->post('email'); //esta metodo recibe el contenido del formulario email
		//Verificación propuesta como desafío :o
		//$this->load->library('session'); //se inicia sesion
		//$this->session->variable='valor de la variable';

		$user = $_POST['usuario'];
		$pass = $_POST['pass'];
		
		$valor = $this->ejemplo_model->verificar($user,$pass);

		if($valor != null){
			$data = array('RUT' => $valor['RUT'],
                   'Nombre' => $valor['Nombre'],
                   'apellido' => $valor['apellido'],
				   'telefono' => $valor['telefono'],
				   'direccion' => $valor['direccion'],
                   'edad' => $valor['edad'],
				   'sexo' => $valor['sexo'],
				   'email' => $valor['email'],
				   'username' => $valor['username'],
				   'password' => $valor['password'],
                   'logueado' => TRUE);		
		$this->session->set_userdata($data);
		$this->load->view('cursos',$data);
		}

	}



// crear un nuevo usuario

	public function recibirdatos(){
		$data=array(
			'username' => $this->input->post('username'),
			'password' => $this->input->post('password'),
			'rut' => $this->input->post('rut'),
			'nombre' => $this->input->post('nombre'),
			'apellido' => $this->input->post('apellido'),
			'telefono' => $this->input->post('telefono'),
			'direccion' => $this->input->post('direccion'),
			'sexo' => $this->input->post('sexo'),
			'edad' => $this->input->post('edad'),
			'email' => $this->input->post('email')
		);
		$this->modelo->crearCliente($data); 
	}

// edicion de datos del usuario

//crear un administrador

//banear
}
	

?>
