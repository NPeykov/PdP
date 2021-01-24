class Lugar{
	
	method provincia()
}

class Oficina inherits Lugar{
	const direccion
	const ciudad
	const superficie
	
	method superficie(){
		return superficie
	}
	
	override method provincia(){
		return ciudad.provincia()
	}
}
class Ciudad inherits Lugar{
	const provincia
	var superficie
	
	method superficie(){
		return superficie
	}
	
	override method provincia(){
		return provincia
	}
}

class ZonaRural inherits Lugar{
	const provincia
	const ancho
	const largo
	
	method superficie(){
		return ancho * largo
	}
	
	override method provincia(){
		return provincia
	}
}