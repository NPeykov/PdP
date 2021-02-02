class Suenio{
	var felicidonios
	var estaCumplido = false
	
	method estaCumplido(){
		return estaCumplido
	}
	
	method validarSuenio(persona)
	
	method serCumplido(persona){
		if(self.validarSuenio(persona)){
			persona.recibirFelicidonios(felicidonios)
			estaCumplido = true
		}
		throw new Exception (message = "No puede cumplir el sueño.")
	}
}

class RecibirseCarrera inherits Suenio{
	var nombreCarrera
	
	
	override method validarSuenio(persona){
		return persona.quiereEstudiar(nombreCarrera) 
		&& persona.tieneTitulo(nombreCarrera)
	}
}

class TenerHijo inherits Suenio{}

class AdoptarHijo inherits Suenio{
	var cantidad
	
	override method validarSuenio(persona){
		return persona.tieneHijo()
	}
	
}

class ViajarDestino inherits Suenio{
	var nombreDestino
	
}

class ConseguirLaburo inherits Suenio{
	var sueldo
	
	override method validarSuenio(persona){
		return persona.aceptaLaburo(sueldo)
	}
}

