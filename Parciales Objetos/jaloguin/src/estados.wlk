class EstadoSalud {
	
	method cambiar(chico){}
	
	method permiteComerCaramelos(){ return true }
	
}

object sano inherits EstadoSalud{
	
	override method cambiar(chico){
		chico.estadoSalud(empachado)
		chico.reducirActitudALaMitad()
	}
	
}

object empachado inherits EstadoSalud{
	
	override method cambiar(chico){
		chico.estadoSalud(cama)
		chico.anularActitud()
	}
}

object cama inherits EstadoSalud{

	override method permiteComerCaramelos(){
		return false
	}
	
}