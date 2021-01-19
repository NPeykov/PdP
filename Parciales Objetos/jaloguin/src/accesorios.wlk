class Accesorio{
	
	method nivelDeTerror()
}


class Maquillaje inherits Accesorio{
	var nivelDeTerror = 3
	
	method nivelDeTerror(nuevoNivel){
		nivelDeTerror = nuevoNivel
	}
	
	override method nivelDeTerror(){
		return nivelDeTerror
	}
}

class TrajeTierno inherits Accesorio{
	override method nivelDeTerror(){ return 2 }
}

class TrajeTerrorifico inherits Accesorio{
	override method nivelDeTerror(){ return 5 }
}