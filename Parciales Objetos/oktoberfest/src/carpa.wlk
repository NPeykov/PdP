import jarra_cerveza.*

class CarpaCervecera{
	var capacidadLimite
	var tieneBandaMusical
	var jarraCervezaEnVenta
	var personas
	var personasConReserva
	
	method recibirPersona(persona){
		if(self.hayEspacioParaUnoMas() && self.realizoReserva(persona)){
			personas.add(persona)
			persona.adquirirCerveza(jarraCervezaEnVenta)
			self.regalarCervezaGratis(persona)
		}
		else throw new Exception (message = "No puede ingresar a la carpa")
	}
	
	method hayEspacioParaUnoMas(){
		return personas.size() + 1 <= capacidadLimite
	}
	
	method realizoReserva(persona){
		return personasConReserva.contains(persona)
	}
	
	method regalarCervezaGratis(persona){
		const cervezaGratis = new JarraCerveza(marcaCerveza = jarraCervezaEnVenta.marcaCerveza(), capacidadEnLitros = 0.3)
		persona.adquirirCerveza(cervezaGratis)
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
	
	method personasConReserva(){
		return personasConReserva
	}	
	
	method cantidadDeEbriosEmpedernidos(){
		return personas.filter({persona => persona.esEbrioEmpedernido()}).size()
	}
	
	method ebriosEmpedernidos(){
		return personas.filter({persona => persona.esEbrioEmpedernido()})
	}
	
	method esDeInteresParaLaPersona(persona){
		return persona.deseaEntrar(self)
	}
}









