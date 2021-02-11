import huevo.*

class Pajaro{
	var ira
	
	method fuerza(){
		return ira * 2
	}
	
	method enojarse(){
		ira *= 2
	}
	
	method esFuerte(){
		return self.fuerza() > 50
	}
	
	method disminuirIra(cantidad){
		ira -= cantidad
	}
}


class PajaroRencoroso inherits Pajaro{
	var vecesQueSeEnojo
	
	override method fuerza(){
		return 10 * vecesQueSeEnojo
	}
	
	override method enojarse(){
		vecesQueSeEnojo += 1
		super()
	}
}

object red inherits PajaroRencoroso{}

object terence inherits PajaroRencoroso{
	var factorFuerza
	
	method factorFuerza(nuevoFactor){
		factorFuerza = nuevoFactor
	}
	
	override method fuerza(){
		return super() * factorFuerza
	}
}

object bomb inherits Pajaro{
	var fuerzaMaximaPermitida = 9000
	
	method fuerzaMaximaPermitida(nuevaFuerza){
		fuerzaMaximaPermitida = nuevaFuerza
	}
	
	override method fuerza(){
		return super().min(fuerzaMaximaPermitida)
	}
}

object chuck inherits Pajaro{
	var velocidad
	
	override method fuerza(){
		return velocidad.min(80) + self.excesoDeVelocidad()
	}
	
	method excesoDeVelocidad(){
		if(velocidad - 80 <= 0){
			return 0
		}
		else return (velocidad - 80) * 5
	}
	
	override method enojarse(){
		velocidad *= 2
	}
	
	override method disminuirIra(cantidad){} //no le afecta
}

object matilda inherits Pajaro{
	var huevos
	
	method fuerzaHuevos(){
		return huevos.sum({huevo => huevo.fuerza()})
	}
	
	override method fuerza(){
		return super() + self.fuerzaHuevos()
	}
	
	override method enojarse(){
		const nuevoHuevo = new Huevo(pesoEnKg = 2)
		huevos.add(nuevoHuevo)
	}
}


