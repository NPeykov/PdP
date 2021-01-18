import vikingos.*
import lugares_objetivos.*

class ErrorAlSubirAExpedicion inherits Exception{}

class Expedicion  {
	var vikingos
	var objetivos
	
	method objetivos(){
		return objetivos
	}
	
	method vikingos(){
		return vikingos
	}
	
	method mandarAExpedicion(vikingo){
		if(!vikingo.esProductivo() || !vikingo.suCastaLePermiteIr()){
			 throw new ErrorAlSubirAExpedicion (message = "No puede ir")
		}
		else vikingos.add(vikingo)
	}
	
	method cantidadVikingoParticipantes(){
		return vikingos.size()
	}
	
	method valeLaPena(){
		return objetivos.all({objetivo => objetivo.haySuficienteRecompensa(vikingos)})
	}
	
	method realizarExpedicion(){
		objetivos.forEach({objetivo => objetivo.serAtacada(vikingos)})
	}
}
