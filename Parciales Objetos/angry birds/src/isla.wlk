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
	
	method realizarEvento(evento){
		evento.realizarse(pajaros)
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
	
	method obstaculos(){
		return obstaculos
	}
	
	method obstaculosEnPie(){
		return obstaculos.filter({obstaculo => obstaculo.estaEnPie()})
	}
	
	method primerObstaculoEnPie(){
		return self.obstaculosEnPie().first()
	}
	
	method derribarObstaculo(pajaro){
		if(obstaculos.isEmpty()){
			throw new Exception (message = "No hay obstaculos!")
		}
		self.primerObstaculoEnPie().serAtacado(pajaro)
	}
	
	method noQuedanObstaculos(){
		return self.obstaculosEnPie().isEmpty()
	}
}


