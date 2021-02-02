class SuenioMultiple{
	var suenios
	
	method serCumplido(persona){
		suenios.forEach({suenio => suenio.serCumplido(persona)})
	}
	
}
