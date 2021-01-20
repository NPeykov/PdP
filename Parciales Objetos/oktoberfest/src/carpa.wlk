class CarpaCervecera{
	var capacidadLimite
	var tieneBandaMusical
	var jarraCervezaEnVenta
	var personas
	
	method recibirPersona(persona){
		if(personas.size() + 1 > capacidadLimite){
			throw new Exception (message = "No hay capacidad para que ingrese otra persona")
		}
		personas.add(persona)
		persona.comprarJarraCerveza(jarraCervezaEnVenta)
	}
	
	method tieneBandaMusical(){
		return tieneBandaMusical
	}
	
	method jarraCervezaEnVenta(){
		return jarraCervezaEnVenta
	}
	
	method personas(){
		return personas
	}
	
}


class JarraCerveza{
	const marcaCerveza
	const capacidadEnLitros
	
	method aporteAlcohol(){
		return capacidadEnLitros * marcaCerveza.graduacionAlcohol()
	}
	
	method tieneOrigenBelgico(){
		return marcaCerveza.paisOrigen() == "Belgica"
	}
	
	method superaPorcentajeAlcohol(cantidad){
		return marcaCerveza.graduacionAlcohol() > cantidad
	}
}

class Cerveza{
	const graduacionAlcohol
	const paisOrigen
	
	
	method paisOrigen(){ return paisOrigen }
	method graduacionAlcohol(){ return graduacionAlcohol }
}


class Persona{
	var peso
	var jarrasCompradas
	var leGustaMusicaClasica
	var aguante
	
	method jarrasCompradas(){
		return jarrasCompradas
	}
	
	method estaEbrio(){
		return self.alcoholEnSangre() * peso > aguante
	}
	
	
	method alcoholEnSangre(){
		return jarrasCompradas.sum({cerveza => cerveza.aporteAlcohol()})
	}
	
	method deseaEntrar(carpa){
		return self.leGustaElTipoDeCerveza(carpa.jarraCervezaEnVenta()) && self.leGustaSuMusica(carpa)
	}
	
	method entrar(carpa){
		if(self.deseaEntrar(carpa)){
			carpa.recibirPersona(self)
		}
		else throw new Exception (message = ("No le gusta la carpa"))
	}
	
	method leGustaElTipoDeCerveza(tipoCerveza){
		return true
	}
	
	method leGustaSuMusica(carpa){
		return carpa.tieneBandaMusical() == leGustaMusicaClasica
	}
	
	method comprarJarraCerveza(jarraCerveza){
		jarrasCompradas.add(jarraCerveza)
	}
	
}


class Belga inherits Persona{
	
	override method leGustaElTipoDeCerveza(tipoCerveza){
		return tipoCerveza.tieneOrigenBelgico()
	}
}

class Checo inherits Persona{
	
	override method leGustaElTipoDeCerveza(tipoCerveza){
		return tipoCerveza.superaPorcentajeAlcohol(0.08)
	}
}

class Aleman inherits Persona{
	
	override method leGustaElTipoDeCerveza(tipoCerveza){ return true }
}



