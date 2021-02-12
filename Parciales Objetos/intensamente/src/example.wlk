
object riley {
	var felicidad = 1000
	var emocionDominante
	var recuerdosDelDia
	
	method vivirEvento(unEvento, descripcionEvento){
		const recuerdo = new Recuerdo(
			evento = unEvento, 
			descripcion = descripcionEvento,
			fecha = new Date(),
			emocionActual = emocionDominante
		)
		
		recuerdosDelDia.add(recuerdo)
	}
	
	method asentarRecuerdo(recuerdo){
		recuerdo.asentarse(self)
	}
	
	method disminuirFelicidad(porcentaje){
		const nuevaFelicidad = felicidad - felicidad * porcentaje / 100
		if(nuevaFelicidad < 1){
			throw new Exception (message = "La nueva felicidad debe ser mayor a 1!")
		}
		else felicidad = nuevaFelicidad
	}
	
	method pensamientosCentrales(){ 
		return recuerdosDelDia.filter({recuerdo => recuerdo.esRecuerdoCentral()})   
	}								
	method pensamientosCentralesDificilesDeExplicar(){
		return self.pensamientosCentrales().filter({recuerdo => recuerdo.esDificilDeExplicar()})
	}
}

class Recuerdo{
	const evento
	var descripcion
	var fecha
	var emocionActual
	var esRecuerdoCentral = false
	
	method esRecuerdoCentral(){
		return esRecuerdoCentral
	}
	
	method centralizar(){
		esRecuerdoCentral = true
	}
	
	method asentarse(persona){
		return emocionActual.asentarRecuerdo(self, persona)
	}
	
	method esDificilDeExplicar(){
		return descripcion.size() > 10 //en realidad serian palabras pero dice que asumimos que existe
	}								   //existe un metodo "words()", simplemente cambiariamos size por words
}

class Emocion{
	method asentarRecuerdo(recuerdo, persona){}
}

object alegre inherits Emocion{
	
	override method asentarRecuerdo(recuerdo, persona){
		if(persona.felicidad() > 500){
			recuerdo.centralizar()
		}
	}
}

object triste inherits Emocion{
	override method asentarRecuerdo(recuerdo, persona){
			persona.disminuirFelicidad(10)
			recuerdo.centralizar()
	}
}
