class Persona {
	var suenios
	var edad
	var carrerasDeseadas
	var sueldoDeseado
	var destinosDeseados
	var hijos
	var tipoPersona
	
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
}
