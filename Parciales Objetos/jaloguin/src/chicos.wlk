import accesorios.*
import estados.*

class Chicxs {
	var estadoSalud = sano
	var accesorios
	var actitud
	var caramelos
	
	method estadoSalud(nuevoEstadoSalud){
		estadoSalud = nuevoEstadoSalud
	}
	
	method estadoSalud(){
		return estadoSalud
	}

	method reducirActitudALaMitad(){
		actitud = actitud / 2
	}
	
	method anularActitud(){
		actitud = 0
	}
	
	method actitud(){
		return actitud
	}
	
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
		if(self.esCantidadValidaDeCaramelos(cantidad) && self.puedeComer(cantidad)){
			if(cantidad >= 10){ estadoSalud.cambiar(self) }
			caramelos -= cantidad
		}
		else throw new Exception (message = "Error al intentar comer caramelos")
	}
	
	method esCantidadValidaDeCaramelos(cantidad){
		return self.caramelos() >= cantidad && cantidad > 0
	}
	
	method puedeComer(cantidad){
		return estadoSalud.permiteComerCaramelos()
	}
	
}
