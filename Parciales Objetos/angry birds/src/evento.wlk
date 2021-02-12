class Evento {
	
	method realizarse(pajaros, cerdos)
}

class ManejoDeIra inherits Evento{
	override method realizarse(pajaros, cerdos){
		pajaros.forEach({pajaro => pajaro.disminuirIra(5)})
	}
}

class InvacionPorcina inherits Evento{
	override method realizarse(pajaros, cerdos){
		var cantidadCerdos = cerdos
		if(cantidadCerdos > 100){
			cantidadCerdos -= 100
			pajaros.forEach({pajaro => pajaro.enojarse()})
			self.realizarse(pajaros, cantidadCerdos)
		}
	}
}

class EventosDesafortunados inherits Evento{
	var eventos
	
	override method realizarse(pajaros, cerdos){
		eventos.forEach({evento => evento.realizarse(pajaros, cerdos)})	
	}
}