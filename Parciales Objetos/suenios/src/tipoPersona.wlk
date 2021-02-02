class TipoPersona{
	
	method suenioMasDeseado(persona)
	
}

object realista inherits TipoPersona{
	
	override method suenioMasDeseado(persona){
		return persona.suenioConMasFelicidonios()
	}
}

object alocado inherits TipoPersona{
	
	override method suenioMasDeseado(persona){
		return persona.cualquierSuenio()
	}
}

object obsesivo inherits TipoPersona{
	
	override method suenioMasDeseado(persona){
		return persona.primerSuenio()
	}
}
