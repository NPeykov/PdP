import accesorios.*

class Chicxs {
	var accesorios
	var actitud
	var caramelos
	
	method accesorios(){
		return accesorios
	}
	
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
		if(cantidad < 0){
			throw new Exception (message = "No se puede dar un valor negativo de caramelos")
		}
		caramelos += cantidad  
	}
	
	method comerCaramelos(cantidad){
		if(self.caramelos() >= cantidad && cantidad > 0){
			caramelos -= cantidad
		}
		else throw new Exception (message = "Valor invalido de caramelos")
	}
}
