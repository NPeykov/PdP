class Suenio{
	var felicidonios
	var estaCumplido = false
	
	method estaCumplido(){
		return estaCumplido
	}
	
	method felicidonios(){
		return felicidonios
	}
	
	method validar(persona)
	method volverseRealidad(persona)
	
	method serCumplido(persona){
		if(self.validar(persona)){
			persona.recibirFelicidonios(felicidonios)
			self.volverseRealidad(persona)
			estaCumplido = true
		}
		throw new Exception (message = "No puede cumplir el sueño.")
	}
	
	method esAmbicioso(){
		return felicidonios > 100
	}
}

class RecibirseCarrera inherits Suenio{
	var nombreCarrera
	
	override method validar(persona){
		return persona.quiereEstudiar(nombreCarrera) 
		&& !persona.tieneTitulo(nombreCarrera)
	}
	
	override method volverseRealidad(persona){
		persona.recibirse(nombreCarrera)
	}
}

class TenerHijo inherits Suenio{}

class AdoptarHijo inherits Suenio{
	var cantidad
	
	override method validar(persona){
		return persona.tieneHijo()
	}
	
	override method volverseRealidad(persona){
		persona.adoptarHijos(cantidad)
	}
	
}

class ViajarDestino inherits Suenio{
	var nombreDestino
	
}

class ConseguirLaburo inherits Suenio{
	var sueldo
	
	override method validar(persona){
		return persona.aceptaLaburo(sueldo)
	}
	
	override method volverseRealidad(persona){}
}

