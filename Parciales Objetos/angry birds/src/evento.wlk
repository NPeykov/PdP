class Evento {
	
	method realizarse(isla)
}

class ManejoDeIra inherits Evento{
	override method realizarse(isla){
		isla.pajaros().forEach({pajaro => pajaro.disminuirIra(5)})
	}
}

class InvacionPorcina inherits Evento{
	var cantidadCerdos
	
	override method realizarse(isla){
		if(cantidadCerdos >= 100){
			cantidadCerdos -= 100
			isla.pajaros().forEach({pajaro => pajaro.enojarse()})
			self.realizarse(isla)
		}
	}
}

class EventosDesafortunados inherits Evento{
	var eventos
	
	override method realizarse(isla){
		eventos.forEach({evento => evento.realizarse(isla)})	
	}
}