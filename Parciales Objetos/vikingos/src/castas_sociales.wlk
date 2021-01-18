import vikingos.*

class CastaSocial {
	method permiteLuchar(vikingo){
		return true
	}
	
	method ascender(vikingo){}
}

object jarl inherits CastaSocial{
	override method permiteLuchar(vikingo){
		return !vikingo.tieneArma()
	}
	
	override method ascender (vikingo){
		vikingo.serAscendido(karl)
		vikingo.reclamarRecompensaAscenso()
	}
}

object karl inherits CastaSocial{
	override method ascender (vikingo){
		vikingo.serAscendido(thrall)
	}
}

object thrall inherits CastaSocial{}