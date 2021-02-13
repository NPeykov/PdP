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
		const combustibleNecesario = vehiculo.combustibleFaltante().min(litrosCombustible)
		if(self.puedePagar(combustibleNecesario * 40)){
			dinero -= combustibleNecesario * 40
			vehiculo.cargarCombustible(combustibleNecesario)
		}
		else throw new Exception (message = "No puede cargar esa cantidad de nafta!")
	}
	
	method puedePagar(cantidad){
		return dinero >= cantidad
	}
	
	method pagarMulta(multa){
		if(self.puedePagar(multa.costo())){
			dinero -= multa.costo()
			multa.pagarse()
		}
		else multa.aumentarCosto(10)
	}
	
	method pagarMultas(){
		multas.forEach({ multa => self.pagarMulta(multa) })
	}
	
	method velocidadDelVehiculo(){
		return vehiculo.velocidadPromedio()
	}
	
	method tieneAutoEcologico(){
		return vehiculo.esEcologico()
	}
	
	method serMultado(valorMulta){
		const nuevaMulta = new Multa(costo = valorMulta)
		multas.add(nuevaMulta)
	}
	
	method tieneDocumentoPar(){
		const numerosPares = "02468"
		return numerosPares.contains(dni.last())
	}
	
	method multasPendientes(){
		return multas.filter({ multa => !multa.estaPago() })
	}
	
	method valorMultasPendientes(){
		return self.multasPendientes().sum({ multa => multa.costo() })
	}
	
	method estaComplicado(){
		return self.valorMultasPendientes() > 5000
	}
}
