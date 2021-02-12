class Proceso{
	
	method manifestarse(persona){}
}


class Asentamiento inherits Proceso{
	
	override method manifestarse(persona){
		persona.asentarTodosLosRecuerdos()
	}
}

class AsentamientoSelectivo inherits Proceso{
	var palabraClave
	
	override method manifestarse(persona){
		persona.asentarRecuerdosConPalabra(palabraClave)
	}
}

class restauracionCognitiva inherits Proceso{
	
	override method manifestarse(persona){
		persona.restaurarFelicidad(100)
	}
}