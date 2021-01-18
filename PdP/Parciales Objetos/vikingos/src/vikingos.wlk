import castas_sociales.*
import profesiones.*

class Vikingo {
	var cantidadDeOro
	var castaSocial
	var profesion
	var vidasCobradas
	var armas
	var hectareasDesignadas
	var cantidadDeHijos
	
	method vidasCobradas(){
		return vidasCobradas
	}
	
	method castaSocial(){
		return castaSocial
	}
	
	method hectareasDesignadas(){
		return hectareasDesignadas
	}
	
	method cantidadDeHijos(){
		return cantidadDeHijos
	}
	
	method cantidadDeOro(){
		return cantidadDeOro
	}
	
	method armas(){
		return armas
	}
	
	method armas(cantidad){
		armas = cantidad
	}
	
	method cantidadDeHijos(cantidad){
		cantidadDeHijos = cantidad
	}
	
	method vidasCobradas(vidas){
		vidasCobradas = vidas
	}
	
	method tieneHectareasParaHijos(){
		return hectareasDesignadas / cantidadDeHijos >= 2
	}
	
	method esProductivo(){
		return profesion.tieneCaracterProductivo(self)
	}
	
	method suCastaLePermiteIr(){
		return castaSocial.permiteLuchar(self)
	}
	
	method tieneArma(){
		return armas > 0
	}
	
	method cobrarUnaVida(){
		vidasCobradas += 1
	}
	
	method cobrarSuBotin(botinAdquirido){
		cantidadDeOro += botinAdquirido
	}
	
	method ascenderCastaSocial(){
		castaSocial.ascender(self)
	}
	
	method serAscendido(nuevaCasta){
		castaSocial = nuevaCasta
	}
	
	method reclamarRecompensaAscenso(){
		profesion.adquirirNuevasHerramientas(self)
	}
	
	method recibirCantidadArmas(cantidad){
		armas += cantidad
	}
	
	method recibirHectareasEHijos(cantidad){
		hectareasDesignadas += cantidad
		cantidadDeHijos += cantidad
	}

	
}