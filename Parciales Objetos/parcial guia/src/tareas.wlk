import lugares.*
import servicios.*

class Tarea{
	var fechaARealizarse
	const duracionEnDias = 1
	const lugarARealizarse
	var tareasAnteriores
	
	method fechaARealizarse(){
		return fechaARealizarse
	}
	
	method fechaQueSeRealizo(){
		return fechaARealizarse.plusDays(duracionEnDias)
	}
	
	method provinciaARealizarse(){
		return lugarARealizarse.provincia()
	}
	
	method superficieTotal(){
		return self.superficie() + self.superficieSubTareas()
	}
	
	method superficie(){
		return lugarARealizarse.superficie()
	}
	
	method superficieSubTareas(){
		return tareasAnteriores.sum({ tareaAnterior => tareaAnterior.superficieTotal() })
	}
	
	method costoTotal(){
		return self.costo() + self.costoSubTareas()
	}
	
	method gananciaTotal(){
		return self.ganancia() + self.gananciasSubTareas()
	}
	
	method costoSubTareas(){
		return tareasAnteriores.sum({ tareaAnterior => tareaAnterior.costoTotal() })
	}
	
	method gananciasSubTareas(){
		return tareasAnteriores.sum({ tareaAnterior => tareaAnterior.gananciaTotal() })
	}
	
	method sePuedeHacer(presupuestoALaFecha){
		return tareasAnteriores.all({ tareaAnterior => tareaAnterior.seHaceAntes(self) })
	}
	
	method seHaceAntes(tarea){
		return fechaARealizarse < tarea.fechaARealizarse()
	}
	////////////////////////////
	/* devuelve por ej: {a;{b;c}}, deberia dar {a;b;c} */
	method tareasHojas(){
		return self.hojas() + self.hojasDeRamas()
	}
	
	method hojas(){
		return tareasAnteriores.filter({ tarea => tarea.esHoja() }) 
	}
	
	method hojasDeRamas(){
		return self.tareasRamas().map({ tarea => tarea.tareasHojas() })
	}
	
	method tareasRamas(){
		return tareasAnteriores.filter({ tarea => !tarea.esHoja() })
	}
	
	method esHoja(){
		return tareasAnteriores.isEmpty()
	}
	
	////////////////////////////
	method costo(){ return 0 }
	method ganancia() { return 0 }
}

class TareaProduccion inherits Tarea{
	var servicios
	
	override method costo(){
		return servicios.sum({ servicio => servicio.costo() })
	}
	
	override method sePuedeHacer(presupuestoALaFecha){
		return super(presupuestoALaFecha) && presupuestoALaFecha > 0
	}
}

class TareaRecaudacion inherits Tarea{
	const ingreso
	
	override method ganancia(){
		return ingreso
	}
}
class TareaReuniones inherits Tarea{}
