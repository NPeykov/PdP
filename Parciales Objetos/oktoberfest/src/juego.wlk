class Juego{
	var limiteAlcoholRecomendado
	var personasEnElJuego
	
	method personasEnElJuego(){
		return personasEnElJuego
	}
	
	method esDeInteresParaLaPersona(persona){
		return true
	}
	
	method recibirPersona(persona){
		if(persona.tomoMasDeLaCuenta(limiteAlcoholRecomendado)){
			throw new Exception (message = "No se recomienda jugar")
		}
		personasEnElJuego.add(persona)
	}
}