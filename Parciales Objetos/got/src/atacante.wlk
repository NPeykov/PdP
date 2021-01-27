class Atacante{
	var personalidad
	var casa
	
	method patrimonioCasa(){
		return casa.patrimonio()
	}
	
	method conspirar(atacante, personaje){
		personalidad.conspirar(atacante, personaje)
	}
}

class Personalidad{
	
	method conspirar(atacante, personaje)
}

class Sutil inherits Personalidad{
	
	override method conspirar(atacante, personaje){
		personaje.casarse(atacante)
	}
}

class Asesino inherits Personalidad{
	
	override method conspirar(atacante, personaje){
		if(personaje.estaVivo()){
			personaje.morir()
		}
		else throw new Exception (message = "El personaje estaba muerto")
	}
}

class AsesinoSutil inherits Asesino{
	
	override method conspirar(atacante, personaje){
		if(personaje.estaSolo()){
			super(atacante, personaje)
		}
	}
}

class Disipado inherits Personalidad{
	var porcentajeDerroche
	
	override method conspirar(atacante, personaje){
		personaje.derrocharFortunaCasa(porcentajeDerroche)
	}
}

class Miedoso inherits Personalidad{
	
	override method conspirar(atacante, personaje){}
}