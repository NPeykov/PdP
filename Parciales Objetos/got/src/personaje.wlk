import casa.*
import acompaniante.*

class Personaje{
	var casa
	var conyuges
	var estaVivo = true
	var acompaniantes 
	
	method casa(){
		return casa
	}
	
	method conyuges(){
		return conyuges
	}
	
	method estaSoltero(){
		return conyuges.isEmpty()
	}
	
	method patrimonioDeSuCasa(){
		return casa.patrimonio()
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
	
	method estaSolo(){
		return acompaniantes.isEmpty()
	}
	
	method aliados(){
		return acompaniantes + conyuges + casa.miembros()
	}
	
	method estaVivo(){
		return estaVivo
	}
	
	method matar(){
		estaVivo = false
	}
	
	method esPeligroso(){
		return estaVivo && self.tieneAlianzaPeligrosa()
	}
	
	method tieneAlianzaPeligrosa(){
		return self.tieneAliadosRicos() || self.tieneConyugesRicos() /*|| self.tieneUnAliadoPeligroso()*/
	}
	
	method tieneAliadosRicos(){
		return self.aliados().sum({aliado => aliado.patrimonio()}) >= 10000
	}
	
	method tieneConyugesRicos(){
		if(self.estaSoltero()){ return false }
		else return conyuges.all({conyuge => conyuge.casa().esRica()})
	}
	
	method derrocharFortunaCasa(porcentaje){
		casa.derrochar(porcentaje)
	}
	
	/*method tieneUnAliadoPeligroso(){
		return self.aliados().any({aliado => aliado.esPeligroso()})
	}*/
}


const personajeLannister = new Personaje(casa = lannister, conyuges = #{}, acompaniantes = #{})
const otroPersonajeLannister = new Personaje(casa = lannister, conyuges = #{}, acompaniantes = #{})
const personajeCasadoLannister = new Personaje(casa = lannister, conyuges = #{personajeStark}, acompaniantes = #{})
const personajeGuardiaNoche = new Personaje(casa = guardiaNoche, conyuges = #{}, acompaniantes = #{unLoboHungaro, unDragon})
const personajeStark = new Personaje(casa = stark, conyuges = #{personajeLannister}, acompaniantes = #{unLoboHungaro})
const otroPersonajeStark = new Personaje(casa = stark, conyuges = #{personajeGuardiaNoche}, acompaniantes = #{})

