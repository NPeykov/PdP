
class Persona{
	var posicion
	var elementosCercanos
	var criterioPersona
	
	method posicion(){
		return posicion
	}
	
	method tieneElementoCerca(elemento){
		return elementosCercanos.contains(elemento)
	}
	
	method pedirElemento(comensal, elemento){
		comensal.pasarElemento(elemento, self)
	}
	
	method pasarElemento(elemento, persona){
		if(!self.tieneElementoCerca(elemento)){
			throw new Exception (message = "No tiene el elemento cerca!")
		}
		criterioPersona.pasarElemento(self, elemento, persona)
	}
	
	method darElemento(elemento, persona){
		elementosCercanos.remove(elemento)
		persona.recibir(elemento)
	}
	
	method darTodosLosElementos(persona){
		elementosCercanos.forEach({elemento => self.darElemento(elemento, persona)})
	}
	
	method recicibr(elemento){
		elementosCercanos.add(elemento)
	}
	
	method primerElemento(){
		return elementosCercanos.first()
	}
	
	method cambiarPosicion(persona){
		posicion = persona.posicion()
	}
}

class CriterioPersona{
	method pasarElemento(comensal, elemento, persona)
}

object sordo inherits CriterioPersona{
	override method pasarElemento(comensal, elemento, persona){
		comensal.darElemento(comensal.primerElemento(), persona)
	}
}

object pocaPaciencia inherits CriterioPersona{
	override method pasarElemento(comensal, elemento, persona){
		comensal.darTodosLosElementos(persona)
	}
}

object charlatan inherits CriterioPersona{
	override method pasarElemento(comensal, elemento, persona){
		comensal.cambiarPosicion(persona)
		persona.cambiarPosicion(comensal)
	}
}

object normal inherits CriterioPersona{
	override method pasarElemento(comensal, elemento, persona){
		comensal.darElemento(elemento, persona)
	}
}