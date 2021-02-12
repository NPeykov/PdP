import pajaro.*
import huevo.*
import isla.*
import evento.*
import obstaculo.*


const unPajaro = new Pajaro(ira = 28)

object terence2 inherits PajaroRencoroso(ira = 4, vecesQueSeEnojo = 2) {
	var factorFuerza = 2
	
	method factorFuerza(nuevoFactor){
		factorFuerza = nuevoFactor
	}
	
	override method fuerza(){
		return super() * factorFuerza
	}
}

const unHuevo = new Huevo(pesoEnKg = 5)
const otroHuevo = new Huevo(pesoEnKg = 1)
const huevo3 = new Huevo(pesoEnKg = 6)
const huevo4 = new Huevo(pesoEnKg = 10)
const huevo5 = new Huevo(pesoEnKg = 10)

object matilda2 inherits Pajaro (ira = 10){
	var huevos = [unHuevo, otroHuevo, huevo3, huevo4, huevo5]
	
	method huevos(){
		return huevos
	}
	
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

const obstaculoObrero = new CerditoObrero()
const cerditoArmado = new CerditoArmado (resistenciaArma = 4)

const unaInvacionPorcina = new InvacionPorcina(cantidadCerdos = 340)

const unaIsla = new Isla(pajaros = [terence2, matilda2, unPajaro], eventos = unaInvacionPorcina)

const unaIslaPorcina = new IslaPorcina(obstaculos = [obstaculoObrero, cerditoArmado])