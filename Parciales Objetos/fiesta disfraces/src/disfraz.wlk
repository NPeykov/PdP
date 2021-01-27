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

	method puntaje(invitado, fiesta){
		return caracteristicas.sum({
			caracteristica => caracteristica.aportePuntaje(invitado, fiesta)
		})
	}
	
	method antiguedad(fecha){
		return fecha - fechaConfeccion
	}
	
}

class CaracteristicaDisfraz{
	method aportePuntaje(invitado, fiesta)
}

class DisfrazGracioso inherits CaracteristicaDisfraz{
	var nivelGracia
	
	override method aportePuntaje(invitado, fiesta){
		if(invitado.tieneMenosDe(50)){
			return nivelGracia * 3
		}
		else return nivelGracia
	}
}

class DisfrazTobara inherits CaracteristicaDisfraz{
	var fechaCompra
	
	override method aportePuntaje(invitado, fiesta){
		if(fiesta.fecha() - fechaCompra >= 2){return 5}
		else return 3
	}
}

class DisfrazCareta inherits CaracteristicaDisfraz{
	var valorDisfrazPersonaje
	
	override method aportePuntaje(invitado, fiesta){
		return valorDisfrazPersonaje
	}
}

class DisfrazSexy inherits CaracteristicaDisfraz{
	
	override method aportePuntaje(invitado, fiesta){
		if(invitado.esSexy()){
			return 15
		}
		else return 2
	}
}