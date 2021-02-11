import pajaro.*

class Isla {
	var pajaros
	
	
	method pajarosFuertes(){
		return pajaros.filter({pajaro => pajaro.esFuerte()})
	}
	
	method fuerzaIsla(){
		return self.pajarosFuertes().sum({pajaro => pajaro.fuerza()})
	}
	
	method sesionManejoDeIra(){
		pajaros.forEach({pajaro => pajaro.disminuirIra(5)})
	}
	
	method invasionPorcina(cerdos){
		var cantidadCerdos = cerdos
		if(cantidadCerdos > 100){
			cantidadCerdos -= 100
			pajaros.forEach({pajaro => pajaro.enojarse()})
			self.invasionPorcina(cantidadCerdos)
		}
	}
}