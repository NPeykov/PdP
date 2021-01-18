class Lugar{
	method haySuficienteRecompensa(vikingos)
	method serAtacada(vikingos)
	method botinDeCadaVikingo(vikingos)
}

class Capital inherits Lugar{
	var factorRiqueza
	var cantidadDeDefensores
	
	override method haySuficienteRecompensa(vikingos){
		return self.botinDeCadaVikingo(vikingos) >= 3
	}
	
	override method botinDeCadaVikingo(vikingos){
		return cantidadDeDefensores * factorRiqueza / vikingos.size()
	}
	
	override method serAtacada(vikingos){
		const botin = self.botinDeCadaVikingo(vikingos)
		vikingos.forEach({vikingo => 
			vikingo.cobrarUnaVida()
			vikingo.cobrarSuBotin(botin)})
	}
}


class Aldea inherits Lugar{
	var cantidadDeCrucifijos
	
	method cantidadDeCrucifijos(cantidad){
		cantidadDeCrucifijos = cantidad
	}
	
	override method haySuficienteRecompensa(vikingos){
		return cantidadDeCrucifijos > 15
	}
	
	override method botinDeCadaVikingo(vikingos){
		return cantidadDeCrucifijos / vikingos.size()
	}
	
	override method serAtacada(vikingos){
		const botin = self.botinDeCadaVikingo(vikingos)
		vikingos.forEach({vikingo => vikingo.cobrarSuBotin(botin)})
	}
}


class AldeaAmurallada inherits Aldea{
	var cantidadMinimaDeVikingos
	
	override method haySuficienteRecompensa(vikingos){
		return cantidadMinimaDeVikingos <= vikingos.size() && super(vikingos)
	}
}


///PUNTO 4: EN CASO QUE SE AGREGUE OTRO OBJETIVO (POR EJ CASTILLOS) 
/*
 * se puede ver que podemos gracias a la clase "Lugar" se hace mas facil poder crear
 * nuevos objetivos de ataque, pero siempre hay que definir los metodos abstractos
 * que son declarados en la superclase, ya que todos los lugares deberian entender
 * esos metodos para poder devolver alguna respuesta, incluso si no se debiera
 * devolver nada.
 */

/*
class Castillo inherits Lugar{
	--variable relacionada con botin (si es necesario)--
	
	
	override method haySuficienteRecompensa(vikingos){
		---condicion
	}
	
	override method botinDeCadaVikingo(vikingos){
		--condicion usando la variable ---
	}
	
	override method serAtacada(vikingos){
		-- logica de devolver el botin y los efectos sobre cada vikingo--
	}
}

 */