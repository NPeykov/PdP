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
	
	method cargarCombustible(litros){
		combustible += litros
	}
	
	method recorrer(kilometros){
		const consumoViaje = self.consumoViaje(kilometros)
		if(consumoViaje > combustible){
			throw new Exception (message = "No tiene combustible suficiente")
		}
		else combustible -= consumoViaje
	}
	
	method consumoViaje(kilometros){
		return 2
	}
	
	method esEcologico()
	
}

object camioneta inherits Vehiculo{
	
	override method esEcologico(){ return false }
	
	override method consumoViaje(kilometros){
		return 4 + 5 * kilometros
	}
}

object deportivo inherits Vehiculo{
	
	override method esEcologico(){
		return velocidadPromedio < 120
	}
	
	override method consumoViaje(kilometros){
		return super(kilometros) + 0.2
	}
}

object familiar inherits Vehiculo{
	override method esEcologico(){ return true }
}

