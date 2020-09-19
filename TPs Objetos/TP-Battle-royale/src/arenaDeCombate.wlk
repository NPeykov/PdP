import personajes.*

object equipos {
	const equipos = [primerEquipo, segundoEquipo]
	
	method pelear(unEquipo, otroEquipo){
		unEquipo.enfrentarseA(otroEquipo)
		otroEquipo.enfrentarseA(unEquipo)
	}
	
	method equipoGanador(){
		return equipos.max({unEquipo => unEquipo.energiaTotalDelEquipo()})
	}
	
	
	method gritoDeLosGanadores(){
		return self.equipoGanador().gritosDeVictoria()
	}
}

object primerEquipo{
	const integrantes = [toro, pocardo]
	
	method integrantes(){
		return integrantes
	}
	
	method enfrentarseA(unEquipo){
		integrantes.forEach({integrante => unEquipo.lucharContra(integrante)})
	}
	
	method lucharContra(enemigo){
		integrantes.forEach({integrante => integrante.luchar(enemigo)})
	}
	
	method energiaTotalDelEquipo(){
		return integrantes.sum({unPersonaje => unPersonaje.energia()})
	}
	
	method gritosDeVictoria(){
		return integrantes.map({unPersonaje => unPersonaje.gritoDeVictoria()})
	}

}

object segundoEquipo{
	const integrantes = [pamela, tulipan]
	
	method integrantes(){
		return integrantes
	}
	
	method enfrentarseA(unEquipo){
		integrantes.forEach({integrante => unEquipo.lucharContra(integrante)})
	}
	
	method lucharContra(enemigo){
		integrantes.forEach({integrante => integrante.luchar(enemigo)})
	}
	
	method energiaTotalDelEquipo(){
		return integrantes.sum({unPersonaje => unPersonaje.energia()})
	}
	
	method gritosDeVictoria(){
		return integrantes.map({unPersonaje => unPersonaje.gritoDeVictoria()})
	}
}