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
	
	method entrar(atraccion){
		if(atraccion.esDeInteresParaLaPersona(self)){
			atraccion.recibirPersona(self)
		}
		else throw new Exception (message = ("No cumplen requisitos atraccion"))
	}
	
	method leGustaElTipoDeCerveza(tipoCerveza){
		return true
	}
	
	method leGustaSuMusica(carpa){
		return carpa.tieneBandaMusical() == leGustaMusicaClasica
	}
	
	method adquirirCerveza(jarraCerveza){
		jarrasCompradas.add(jarraCerveza)
	}
	
	method esEbrioEmpedernido(){
		if(!self.tomoAlgunaCerveza()){ return false } //porque all da true si la lista es vacia
		return jarrasCompradas.all({jarra => jarra.esDeUnLitro()})
	}
	
	method tomoAlgunaCerveza(){
		return jarrasCompradas.size() > 0
	}
	
	
	method tomoMasDeLaCuenta(limite){
		return self.alcoholEnSangre() > limite || !self.tomoAlgunaCerveza()
	}
	
	method entrarAAtracciones(atracciones){
		atracciones.forEach({atraccion => self.entrar(atraccion)})
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