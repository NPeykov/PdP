class Cliente{
	
	method reservar(propiedad){
		propiedad.serReservada(self)
	}
	
	method concretarOperacion(propiedad){
		propiedad.cocretar(self)
	}
	
}


class Empleado{
	
	method reservar(inmueble, cliente){
		inmueble.serReservada(cliente)
	}
}