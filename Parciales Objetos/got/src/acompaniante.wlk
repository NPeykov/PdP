class Acompaniante{
	
	method esPeligroso(){
		return false
	}
	
	method patrimonio(){
		return 0
	}
}

class Dragon inherits Acompaniante{
	override method esPeligroso(){
		return true
	}
}

class LoboHungaro inherits Acompaniante{
	override method esPeligroso(){
		return true
	}
}

const unDragon = new Dragon()
const unLoboHungaro = new LoboHungaro()