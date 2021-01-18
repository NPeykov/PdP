class Profesion{
	method tieneCaracterProductivo(vikingo){
		return false
	}
	
	method adquirirNuevasHerramientas(vikingo){}
}

object soldado inherits Profesion{
	override method tieneCaracterProductivo(vikingo){
		return vikingo.vidasCobradas() > 20 && vikingo.tieneArma()
	}
	
	override method adquirirNuevasHerramientas(vikingo){
		vikingo.recibirCantidadArmas(10)
	}
}

object granjero inherits Profesion{
	override method tieneCaracterProductivo(vikingo){
		return vikingo.tieneHectareasParaHijos()
	}
	
	override method adquirirNuevasHerramientas(vikingo){
		vikingo.recibirHectareasEHijos(2)
	}
}
