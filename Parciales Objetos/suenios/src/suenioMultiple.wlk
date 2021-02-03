class SuenioMultiple{
	var suenios
	
	method serCumplido(persona){
		suenios.forEach({suenio => suenio.serCumplido(persona)})
	}
	
	method felicidonios(){
		return suenios.sum({suenio => suenio.felicidonios()})
	}
	
	method estaCumplido(){
		return self.todosLosSueniosSeCumplieron()
	}
	
	method todosLosSueniosSeCumplieron(){
		return suenios.all({suenio => suenio.estaCumplido()})
	}
	
	method esAmbicioso(){
		return self.felicidonios() > 100
	}
	
}
