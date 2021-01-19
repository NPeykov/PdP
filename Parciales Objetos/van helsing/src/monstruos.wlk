class Monstruo{
	var vitalidad
	
	method velocidad()
	
	method peligrosidad(){
		return vitalidad * self.velocidad()
	}
	
	method esRapido(){
		return self.velocidad() > 100
	}
	
	method esMalo()
	
	method esPatetico(){  //falta resolver
		return true
	}
}

class HombreLobo inherits Monstruo{
	
	override method velocidad(){
		return 30 + 2 * vitalidad
	}
	
	override method esMalo(){
		return vitalidad > 50
	}
}

class Vampiro inherits Monstruo{
	var velocidad = 100
	
	method velocidad(nuevaVelocidad){
		velocidad = nuevaVelocidad
	}
	
	override method velocidad(){
		return velocidad
	}
	
	override method esMalo(){
		return false
	}
}


class Dragon inherits Monstruo{ 
	const esMalo
	var velocidad
	
	override method esMalo(){
		return esMalo
	}
	
	override method velocidad(){
		return velocidad
	}
}


object sapoPepe inherits Monstruo
{
	override method velocidad() { return 150000 }
	override method esMalo(){ return true }
	override method peligrosidad() { return 2000000 }
	override method esPatetico() { return true }
}