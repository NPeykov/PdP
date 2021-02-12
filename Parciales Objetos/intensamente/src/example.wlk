
object riley {
	var felicidad = 1000
	var emocionDominante
	var recuerdosDelDia
	var recuerdosAsentados
	
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
		if(recuerdo.esCentralizado(self)){
			recuerdosAsentados.add(recuerdo)
		}
	}
	
	method disminuirFelicidad(porcentaje){
		const nuevaFelicidad = felicidad - felicidad * porcentaje / 100
		if(nuevaFelicidad < 1){
			throw new Exception (message = "La nueva felicidad debe ser mayor a 1!")
		}
		else felicidad = nuevaFelicidad
	}
	
	method pensamientosCentrales(){ //no entendi bien la diferencia entre pensamientos asentados 
		return recuerdosAsentados   //y centrales, se supuso que es lo mismo.
	}								//otra opcion es manejar un booleano en recuerdo, asi solo se tendria
									//una lista de recuerdos en vez de 2.
	method pensamientosCentralesDificilesDeExplicar(){
		return recuerdosAsentados.esDificilDeExplicar()
	}
}

class Recuerdo{
	const evento
	var descripcion
	var fecha
	var emocionActual
	
	method esCentralizado(persona){
		return emocionActual.seCentraliza(self, persona)
	}
	
	method esDificilDeExplicar(){
		return descripcion.size() > 10 //en realidad serian palabras pero dice que asumimos que existe
	}								   //existe un metodo "words()", simplemente cambiariamos size por words
}

class Emocion{
	method seCentraliza(recuerdo, persona){ return false }
}

object alegre inherits Emocion{
	
	override method seCentraliza(recuerdo, persona){
		return persona.felicidad() > 500
	}
}

object triste inherits Emocion{
	override method seCentraliza(recuerdo, persona){
			persona.disminuirFelicidad(10)
			return true
	}
}
