class Personalidad{
	method personalidadSexy(persona)
}

object invitadoAlegre inherits Personalidad{
	override method personalidadSexy(persona){
		return false
	}
}

object invitadoTaciturna inherits Personalidad{
	override method personalidadSexy(persona){
		return persona.tieneMenosDe(30)
	}
}

object invitadoCambiante inherits Personalidad{
	var personalidadActual
	
	method personalidadActual(nuevaPersonalidad){
		personalidadActual = nuevaPersonalidad
	}
	
	override method personalidadSexy(persona){
		return personalidadActual.personalidadSexy(persona)
	}
}
