import monstruos.*

class Ataque{
	var monstruosAtacantes
	var fechaAtaque
	
	method mounstroMasPeligroso(){
		return monstruosAtacantes.max({monstruo => monstruo.peligrosidad()})
	}
	
	method mounstrosRapidos(){
		return monstruosAtacantes.filter({monstruo => monstruo.esRapido()})
	}
	
	method esAtaqueSerio(){
		return self.monstruosMalos().size() > 3
	}
	
	method monstruosMalos(){
		return monstruosAtacantes.filter({monstruo => monstruo.esMalo()})
	}
	
	method nivelDeDevastacion(){
		return monstruosAtacantes.sum({monstruo => monstruo.peligrosidad()})
	}
}

