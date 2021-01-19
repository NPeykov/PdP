import ataques.*

class Zona{
	var ataquesSufridos
	
	method resistencia()
	
	method nightmareTeam(){
		return ataquesSufridos.forEach({ataque => ataque.monstruoMasPoderoso()})
	}
	
	method estaDestruida(){
		ataquesSufridos.any({ataque => ataque.nivelDeDevastacion() > self.resistencia()})
	}
	
	method registrarAtaque(monstruos)
	
	
}


class Castillo inherits Zona{
	var resistenciaAdicional
	
	override method resistencia(){
		return 3000 + resistenciaAdicional
	}
	
	override method registrarAtaque(monstruos){
		const monstruosFuertes = self.monstruosFuertes(monstruos)
		if(monstruosFuertes.size() > 0){
			const nuevoAtaque = new Ataque(monstruosAtacantes = monstruosFuertes, fechaAtaque = new Date())
			ataquesSufridos.add(nuevoAtaque)
		}
		else throw new Exception (message = "No hay monstruos fuertes")
	}
	
	method monstruosFuertes(monstruos){
		return monstruos.filter({monstruos.peligrosidad() > 256})
	}
}

class CastilloMagico inherits Castillo{
	var magosDefensores
	
	override method resistencia(){
		return super() + self.aporteDeMagos() + 20
	}
	
	method aporteDeMagos(){
		return magosDefensores.sum({mago => mago.aporteResistencia()})
	}
}

class Mago{
	var aporteResistencia
	
	method aporteResistencia(){
		return aporteResistencia
	}
}

class Aldea inherits Zona {
	var casas
	
	override method resistencia(){
		return casas.sum({casa => casa.aporteResistencia()})
	}
	
	override method registrarAtaque(monstruos){
		if(self.hayMonstruosPateticos(monstruos)){
			throw new Exception(message = "No puede ser atacada por monstruos pateticos")
		}
		
		const nuevoAtaque = new Ataque(monstruosAtacantes = monstruos, fechaAtaque = new Date())
		ataquesSufridos.add(nuevoAtaque)
	}
	
	method hayMonstruosPateticos(monstruos){
		return monstruos.any({ monstruo => monstruo.esPatetico() })
	}
}

class Casa { 
	const resistencia
	
	method aporteResistencia(){
		return resistencia
	}
}
