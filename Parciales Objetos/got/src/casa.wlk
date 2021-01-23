import personaje.*

class Casa{
	var patrimonio
	const ciudadOrigen
	var miembros
	
	method patrimonio(){
		return patrimonio
	}
	
	method esRica(){
		return patrimonio > 1000
	}
	
	method cantidadDeMiembros(){
		return miembros.size()
	}
	
	method permiteCasar(personaje)

}


object lannister inherits Casa(
	patrimonio = 1500, 
	ciudadOrigen = "una ciudad", 
	miembros = #{personajeLannister, otroPersonajeLannister, personajeCasadoLannister}
){
	override method permiteCasar(personaje){
		return personaje.estaSoltero()
	}
}

object stark inherits Casa(
	patrimonio = 850, 
	ciudadOrigen = "una ciudad", 
	miembros = #{personajeStark, otroPersonajeStark}
){
	override method permiteCasar(personaje){
		return personaje.casa() == self
	}
}

object guardiaNoche inherits Casa(
	patrimonio = 300, 
	ciudadOrigen = "una ciudad", 
	miembros = #{personajeGuardiaNoche}
){
	override method permiteCasar(personaje){
		return false
	}
}