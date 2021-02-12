import pajaro.*

class Isla {
	var pajaros
	var eventos
	
	method pajaros(){
		return pajaros
	}
	
	method pajarosFuertes(){
		return pajaros.filter({pajaro => pajaro.esFuerte()})
	}
	
	method fuerzaIsla(){
		return self.pajarosFuertes().sum({pajaro => pajaro.fuerza()})
	}
	
	method realizarEvento(evento, cantidadCerdos){
		evento.realizarse(pajaros, cantidadCerdos)
	}
	
	method atacar(isla){
		pajaros.forEach({pajaro => pajaro.atacar(isla)})
	}
	
	method recuperaronHuevos(isla){
		self.atacar(isla)
		return isla.noQuedanObstaculos()
	}
}

class IslaPorcina{
	var obstaculos
	
	method obstaculosEnPie(){
		return obstaculos.filter({obstaculo => obstaculo.estaEnPie()})
	}
	
	method primerObstaculoEnPie(){
		return self.obstaculosEnPie().first()
	}
	
	method derribarObstaculo(pajaro){
		self.primerObstaculoEnPie().serAtacado(pajaro)
	}
	
	method noQuedanObstaculos(){
		return obstaculos.isEmpty()
	}
}


