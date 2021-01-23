import operacion.*

class Inmueble{
	var tamanioEnMetrosCuadrados
	var cantidadAmbientes
	var tipoOperacion
	var zona
	var personaReservada = null
	var estaDisponible = true
	
	method valor()
	
	method plusZona(){
		return zona.valorPlus()
	}
	
	method serReservada(cliente){
		if(personaReservada == null && estaDisponible){
			personaReservada = cliente
		}
		else throw new Exception (message = "No esta disponible")
	}
	
	method concretar(cliente){
		if(personaReservada == cliente && estaDisponible){
			
		}
	}
	
	method valorComision(){
		return tipoOperacion.comision()
	}
}

object casa inherits Inmueble{
	var valor
	
	override method valor(){
		return valor + self.plusZona()
	}
	
	
}

object ph inherits Inmueble{
	
	override method valor(){
		return 500000.max(14000 * cantidadAmbientes) + self.plusZona()
	}
}

object departamento inherits Inmueble{
	
	
	override method valor(){
		return 350000 * cantidadAmbientes + self.plusZona()
	}
}


/// ZONAS


class Zona{
	var valorPlus
	
	method valorPlus(){
		return valorPlus
	}
}