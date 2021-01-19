class Adulto{
	var chicosQueIntentaronAsustarlo
	
	method chicosQueIntentaronAsustarlo(){
		return chicosQueIntentaronAsustarlo
	}
	
	method serAsustado(chico) {
		chicosQueIntentaronAsustarlo.add(chico)
	}
	
	method tolerancia(){
		return 10 * self.chicosConMuchosCaramelos().size()
	}
	
	method chicosConMuchosCaramelos(){
		return chicosQueIntentaronAsustarlo.filter({chico => chico.superaCantidadDeCaramelos(15)})
	}
}

class AdultoComun inherits Adulto{
	
	override method serAsustado(chico){
		if(chico.capacidadDeSusto() > self.tolerancia()){
			chico.recibirCaramelos(self.tolerancia() / 2)
		}
		super(chico)
	}
}


class Abuelo inherits Adulto {
	
	override method serAsustado(chico){
			chico.recibirCaramelos(self.tolerancia() / 4)
			super(chico)
	}
	
}

class AdultoNecio inherits Adulto{}
