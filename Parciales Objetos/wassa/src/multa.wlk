class Multa{
	var costo
	var estaPago = false
	
	method estaPago(){
		return estaPago
	}
	
	method pagarse(){
		estaPago = true
	}
	
	method costo(){
		return costo
	}
}
