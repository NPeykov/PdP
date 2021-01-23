import inmueble.*

class Operacion{
	var vendedor
	
	method comision(inmueble)
}

class Alquiler inherits Operacion{
	var mesesPactados
	
	override method comision(inmueble){
		return mesesPactados * inmueble.valor()
	}
	
}

class Venta inherits Operacion{
	var porcentajeComision
	
	override method comision(inmueble){
		return 	porcentajeComision / 100 * inmueble.valor()
	}
	
}

