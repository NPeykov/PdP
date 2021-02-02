class Persona {
	var suenios
	var edad
	var carrerasDeseadas
	var carrerasHechas
	var sueldoDeseado
	var destinosDeseados
	var hijos
	var tipoPersona
	var felicidonios
	
	method cumplirSuenio(suenio){
		suenio.serCumplido(self)
	}
	
	method sueniosPendientes(){
		return suenios.filter({suenio => !suenio.estaCumplido()})
	}
	
	method sueniosCumplidos(){
		return suenios.filter({suenio => suenio.estaCumplido()})
	}
	
	method aceptaLaburo(sueldo){
		return sueldoDeseado >= sueldo
	}
	
	method tieneHijo(){
		return hijos.size() > 0
	}
	
	method quiereEstudiar(carrera){
		return carrerasDeseadas.contains(carrera)
	}
	
	method tieneTitulo(carrera){
		return carrerasHechas.contains(carrera)
	}
	
	method recibirse(carrera){
		carrerasHechas.add(carrera)
	}
	
	method adoptarHijos(cantidadHijos){
		hijos += cantidadHijos
	}
	
	method suenioConMasFelicidonios(){
		return suenios.max({suenio => suenio.felicidonios()})
	}
	
	method cualquierSuenio(){
		return suenios.anyOne()
	}
	
	method primerSuenio(){
		return suenios.first()
	}
	
	method cumplirSuenioMasDeseado(){
		const suenio = tipoPersona.suenioMasDeseado()
		self.cumplirSuenio(suenio)
	}
	
	method esFeliz(){
		return felicidonios > self.felicidoniosPendientes()
	}
	
	method felicidoniosPendientes(){
		return self.sueniosPendientes().sum({suenio => suenio.felicidonios()})
	}
	
	method esAmbicioso(){
		return self.sueniosAmbiciosos() >= 3
	}
	
	method sueniosAmbiciosos(){
		return suenios.filter({suenio => suenio.esAmbicioso()}).size()
	}
}
