class Vehiculo{
	var capacidadTanque
	var combustible
	var velocidadPromedio
	
	method velocidadPromedio(){
		return velocidadPromedio
	}
	
	method combustibleFaltante(){
		return capacidadTanque - combustible
	}
	
	method recorrer(kilometros){
		self.consumirCombustible(2)
	}
	
	method consumirCombustible(cantidad){
		combustible -= cantidad
	}
	
	method esEcologico()
	
}

object camioneta inherits Vehiculo{
	
	override method esEcologico(){ return false }
	
	override method recorrer(kilometros){
		const combustibleConsumido = 4 + 5 * kilometros
		self.consumirCombustible(combustibleConsumido)
	}
}

object deportivo inherits Vehiculo{
	
	override method esEcologico(){
		return velocidadPromedio < 120
	}
	
	override method recorrer(kilometros){
		super(kilometros)
		self.consumirCombustible(0.2)
	}
}

object familiar inherits Vehiculo{
	override method esEcologico(){ return true }
}

