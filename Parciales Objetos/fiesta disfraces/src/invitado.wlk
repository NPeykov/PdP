class Invitado{
	var disfraz
	var edad
	var personalidad
	
	method disfraz(){
		return disfraz
	}
	
	method disfraz(nuevoDisfraz){
		disfraz = nuevoDisfraz
	}
	
	method tieneDisfraz(){
		return disfraz != null
	}
	
	method tieneMenosDe(anios){
		return edad < anios
	}
	
	method esSexy(){
		return personalidad.personalidadSexy(self)
	}
	
	method estaConformeConSuDisfraz(fiesta)
	
	method puntajeDisfraz(fiesta){
		return disfraz.puntaje(self, fiesta)
	}
	
	method cambiarTraje(persona){
		disfraz = persona.disfraz()
	}
	
}

class InvitadoCaprichoso inherits Invitado{
	
	override method estaConformeConSuDisfraz(fiesta){
		return disfraz.nombreDisfraz().size().even()
	}
}

class InvitadoPretencioso inherits Invitado{
	const fechaActual
	
	override method estaConformeConSuDisfraz(fiesta){
		return disfraz.antiguedad(fechaActual) < 30
	}
}

class InvitadoNumerologo inherits Invitado{
	var puntajeDeseado
	
	override method estaConformeConSuDisfraz(fiesta){
		return self.puntajeDisfraz(fiesta) > 10
		    && disfraz.puntaje(self, fiesta) == puntajeDeseado
	}
}


