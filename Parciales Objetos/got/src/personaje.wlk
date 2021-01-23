import casa.*

class Personaje{
	var casa
	var conyuges
	
	method casa(){
		return casa
	}
	
	method conyuges(){
		return conyuges
	}
	
	method estaSoltero(){
		return conyuges.size() == 0
	}
	
	method casarse(personaje){
		if(!self.sePuedeCasar(personaje)){
			throw new Exception (message = "No se pueden casar")
		}
		self.nuevoConyuge(personaje)
		personaje.nuevoConyuge(self)
	}
	
	method nuevoConyuge(conyuge){
		conyuges.add(conyuge)
	}
	
	method sePuedeCasar(personaje){
		return casa.permiteCasar(personaje) && personaje.casa().permiteCasar(self)
	}
	
	
	method patrimonio(){
		return casa.patrimonio() / casa.cantidadDeMiembros()
	}
}


const personajeLannister = new Personaje(casa = lannister, conyuges = #{})
const otroPersonajeLannister = new Personaje(casa = lannister, conyuges = #{})
const personajeCasadoLannister = new Personaje(casa = lannister, conyuges = #{personajeStark})
const personajeGuardiaNoche = new Personaje(casa = guardiaNoche, conyuges = #{})
const personajeStark = new Personaje(casa = stark, conyuges = #{})
const otroPersonajeStark = new Personaje(casa = stark, conyuges = #{personajeGuardiaNoche})

