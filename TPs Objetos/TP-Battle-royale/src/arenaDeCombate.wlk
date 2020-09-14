import personajes.*

object equipos {
	const equipos = [primerEquipo, segundoEquipo]
	
	method pelear(unEquipo, otroEquipo){
		unEquipo.lucharContra(otroEquipo)
		otroEquipo.lucharContra(unEquipo)
	}
	
	method equipoGanador(){
		return equipos.max({unEquipo => unEquipo.energiaTotalDelEquipo()})
	}
	
	method integrantesDelEquipoGanador(){
		return self.equipoGanador().integrantes()
	}
	
	method gritoDeLosGanadores(){
		return self.integrantesDelEquipoGanador().map({unIntegrante => unIntegrante.gritoDeVictoria()})
	}
}

object primerEquipo{
	const integrantes = [toro, pocardo]
	
	method integrantes(){
		return integrantes
	}
	
	method primerPeleador(){
		return integrantes.first()
	}
	
	method segundoPeleador(){
		return integrantes.last()
	}
	
	method lucharContra(segundoEquipo){
		integrantes.forEach({unPersonaje => unPersonaje.luchar(segundoEquipo.primerPeleador())})
		integrantes.forEach({otroPersonaje => otroPersonaje.luchar(segundoEquipo.segundoPeleador())})
	}
	
	method energiaTotalDelEquipo(){
		return integrantes.sum({unPersonaje => unPersonaje.energia()})
	}

}

object segundoEquipo{
	const integrantes = [pamela, tulipan]
	
	method integrantes(){
		return integrantes
	}
	
	method primerPeleador(){
		return integrantes.first()
	}
	
	method segundoPeleador(){
		return integrantes.last()
	}
	
	method lucharContra(primerEquipo){
		integrantes.forEach({unPersonaje => unPersonaje.luchar(primerEquipo.primerPeleador())})
		integrantes.forEach({otroPersonaje => otroPersonaje.luchar(primerEquipo.segundoPeleador())})
	}
	
	method energiaTotalDelEquipo(){
		return integrantes.sum({unPersonaje => unPersonaje.energia()})
	}
}