class Fiesta{
	const lugar
	const fecha
	var invitados
}


class Invitado{
	var disfraz
	var edad
	var personalidad
	
	method disfraz(nuevoDisfraz){
		disfraz = nuevoDisfraz
	}
	
	method tieneMenosDe(anios){
		return edad > anios
	}
	
	method esSexy(){
		personalidad.personalidadSexy(self)
	}
	
	method estaConformeConSuDisfraz(){
		return disfraz.puntaje(self) > 10
	}
}

object invitadoCaprichoso inherits Invitado{
	
	override method estaConformeConSuDisfraz(){
		return disfraz.nombreDisfraz().size().even()
	}
}

object invitadoPretencioso inherits Invitado{
	
	override method estaConformeConSuDisfraz(){
		return true //FALTA
	}
}

object invitadoNumerologo inherits Invitado{
	var puntajeDeseado
	
	override method estaConformeConSuDisfraz(){
		return super() && disfraz.puntaje() == puntajeDeseado
	}
}

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


class Disfraz{
	var nombreDisfraz
	const fechaConfeccion
	var caracteristicas
	
	method nombreDisfraz(){
		return nombreDisfraz
	}
	
	method fechaConfeccion(){
		return fechaConfeccion
	}

	
}

class CaracteristicaDisfraz{
	method puntaje(invitado)
}

class DisfrazGracioso inherits CaracteristicaDisfraz{
	var nivelGracia
	
	override method puntaje(invitado){
		if(invitado.tieneMenosDe(50)){
			return nivelGracia * 3
		}
		else return nivelGracia
	}
}

class DisfrazTobara inherits CaracteristicaDisfraz{
	var fechaCompra
	
	override method puntaje(invitado){
		return 10 //HACER
	}
}

class DisfrazCareta inherits CaracteristicaDisfraz{
	var valorDisfrazPersonaje
	
	override method puntaje(invitado){
		return valorDisfrazPersonaje
	}
}

class DisfrazSexy inherits CaracteristicaDisfraz{
	
	override method puntaje(invitado){
		if(invitado.esSexy()){
			return 15
		}
		else return 2
	}
}

