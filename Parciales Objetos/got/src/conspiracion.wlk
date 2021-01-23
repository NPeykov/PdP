
class Conspiracion{
	var personajeObjetivo
	var atacantes
	
	method atacanteDeLaCasaMasPobre(){
		return atacantes.min({ atacante => atacante.patrimonioDeSuCasa() })
	}
	
	method conspirarContraPersonaje(){
		const atacanteMasPobre = self.atacanteDeLaCasaMasPobre()
		atacantes.forEach({atacante => atacante.conspirar(atacanteMasPobre, personajeObjetivo)})
	}
	
	method esTraidor(personaje){
		personajeObjetivo.aliados().contains(personaje)
	}
	
	method cantidadDeTraidores(){
		return atacantes.filter({atacante => self.esTraidor(atacante)}).size()
	}
}

class Atacante{
	var personalidad
	
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
			personaje.matar()
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

class Disipados inherits Personalidad{
	var porcentajeDerroche
	
	override method conspirar(atacante, personaje){
		personaje.derrocharFortunaCasa(porcentajeDerroche)
	}
}

class Miedoso inherits Personalidad{
	
	override method conspirar(atacante, personaje){}
}