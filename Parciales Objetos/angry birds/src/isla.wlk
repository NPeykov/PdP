import pajaro.*

class Isla {
	var pajaros
	
	
	method pajarosFuertes(){
		return pajaros.filter({pajaro => pajaro.esFuerte()})
	}
	
	method fuerzaIsla(){
		return self.pajarosFuertes().sum({pajaro => pajaro.fuerza()})
	}
}