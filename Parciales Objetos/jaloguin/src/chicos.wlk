import accesorios.*

class Chicxs {
	var accesorios
	var actitud
	var caramelos
	
	method caramelos(){
		return caramelos
	}
	
	method capacidadDeSusto() {
		return accesorios.sum({accesorio => accesorio.nivelDeTerror()}) * actitud
	}
	
	method asustar(adulto){
		adulto.serAsustado(self)
	}
	
	method superaCantidadDeCaramelos(cantidad){
		return caramelos > cantidad
	}
	
	method recibirCaramelos(cantidad){
		caramelos += cantidad  
	}
}
