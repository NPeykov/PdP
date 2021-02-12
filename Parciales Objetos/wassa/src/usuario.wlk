import multa.*

class Usuario{
	var nombre
	var dni
	var dinero
	var vehiculo
	var multas
	
	method recorrerDistancia(distancia){
		vehiculo.recorrer(distancia)
	}
	
	method recargarCombustible(litrosCombustible){
		const precioCombustible = vehiculo.combustibleFaltante().min(litrosCombustible) * 40
		if(self.puedePagar(precioCombustible)){
			dinero -= precioCombustible
		}
		else throw new Exception (message = "No puede cargar esa cantidad de nafta!")
	}
	
	method puedePagar(cantidad){
		return dinero >= cantidad
	}
	
	method pagarMulta(multa){
		if(self.puedePagar(multa.costo())){
			multa.serPagada()
		}
	}
}
