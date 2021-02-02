
class Conspiracion{
	var personajeObjetivo
	var atacantes
	
	method atacanteDeLaCasaMasPobre(){
		return atacantes.min({ atacante => atacante.patrimonioCasa() })
	}
	
	method conspirarContraPersonaje(){
		const atacanteMasPobre = self.atacanteDeLaCasaMasPobre()
		atacantes.forEach({atacante => atacante.conspirar(atacanteMasPobre, personajeObjetivo)})
	}
	
	method esTraidor(personaje){
		personajeObjetivo.esAliadoDe(personaje)
	}
	
	method cantidadDeTraidores(){
		return atacantes.filter({atacante => self.esTraidor(atacante)}).size()
	}
}

