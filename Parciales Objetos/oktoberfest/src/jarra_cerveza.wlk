class JarraCerveza{
	const marcaCerveza
	const capacidadEnLitros
	
	method aporteAlcohol(){
		return capacidadEnLitros * marcaCerveza.graduacionAlcohol()
	}
	
	method marcaCerveza(){
		return marcaCerveza
	}
	
	method tieneOrigenBelgico(){
		return marcaCerveza.paisOrigen() == "Belgica"
	}
	
	method superaPorcentajeAlcohol(cantidad){
		return marcaCerveza.graduacionAlcohol() > cantidad
	}
	
	method esDeUnLitro(){
		return capacidadEnLitros == 1
	}
}

class Cerveza{
	const graduacionAlcohol
	const paisOrigen
	
	
	method paisOrigen(){ return paisOrigen }
	method graduacionAlcohol(){ return graduacionAlcohol }
}