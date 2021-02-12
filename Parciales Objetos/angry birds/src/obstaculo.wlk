class Obstaculo{
	var estaEnPie = true
	
	method estaEnPie(){
		return estaEnPie
	}
	
	method resistencia()
	
	method serAtacado(pajaro){
		if(pajaro.puedeDerribar(self)){
			estaEnPie = false
		}
	}
}

class Pared inherits Obstaculo{
	var ancho
	var factorResistencia
	
	override method resistencia(){
		return factorResistencia * ancho
	}
}

object paredVidrio inherits Pared(factorResistencia = 10){}
object paredMadera inherits Pared(factorResistencia = 25){}
object paredPiedra inherits Pared(factorResistencia = 50){}

class CerditoObrero inherits Obstaculo{
	
	override method resistencia(){
		return 50
	}
}

class CerditoArmado inherits Obstaculo{
	var resistenciaArma
	
	override method resistencia(){
		return 10 * resistenciaArma
	}
}