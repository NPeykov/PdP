class Emocion{
	method asentarRecuerdo(recuerdo, persona){}
	
	method niegaRecuerdo(recuerdo){ return false }
}

object alegre inherits Emocion{
	
	override method asentarRecuerdo(recuerdo, persona){
		if(persona.felicidad() > 500){
			recuerdo.centralizar()
		}
	}
	
	override method niegaRecuerdo(recuerdo){
		return recuerdo.emocion() != self
	}
}

object triste inherits Emocion{
	override method asentarRecuerdo(recuerdo, persona){
			persona.disminuirFelicidad(10)
			recuerdo.centralizar()
	}
	
	override method niegaRecuerdo(recuerdo){
		return recuerdo.emocion() == alegre
	}
}