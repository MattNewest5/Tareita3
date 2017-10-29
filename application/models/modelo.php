<?php
class Modelo extends CI_model {
	function __construct(){
		parent::__construct();
		$this->load->database();
	}
	function query_cursos(){  
		$query = $this->db->query("SELECT * FROM cursos WHERE codigo LIKE '%IN%'");
		if ($query->num_rows() > 0){
			$data=[];
			foreach ($query->result() as $fila) {
		   		$curso['id'] = $fila->id;
		   		$curso['semestres_id'] = $fila->semestres_id;
		   		$curso['departamento_id'] = $fila->departamento_id;
		   		$curso['Año'] = $fila->Anho;
		   		$curso['Horario'] = $fila->Horario;
		   		$curso['Nombre'] = $fila->Nombre;
		   		$curso['codigo'] = $fila->codigo;
		   		$curso['UD'] = $fila->UD;
		   		array_push($data,$curso);
		   	}
		   	return $data;
		}
		else{
			return false;
		}
	}



	function verificar($user,$pass){

 /*		$consulta = "SELECT *FROM usuarios WHERE username = '$user' AND password = '$pass'";
		$query = $this->db->query($consulta);
		$valor = $query->row_array();

		return $valor;  */

		$consulta = "SELECT * FROM usuarios WHERE username='$user' AND password='$pass'";
		$query=$this->db->query($consulta);
		$valor = $query->row_array();
		if ($valor!=null){
			return $valor;
		}
		else{
			return null;
		}


    }		



	

	public function crearCliente($data){
		$this->db->insert('cliente',array('username'=>$data['username'], 'password'=>$data['password'], 'RUT'=>$data['rut'],'Nombre'=>$data['nombre'],'apellido'=>$data['apellido'],'telefono'=>$data['telefono'],'direccion'=>$data['direccion'],'edad'=>$data['edad'],'sexo'=>$data['sexo'],'email'=>$data['email']));

	



	}
}

?>
?>