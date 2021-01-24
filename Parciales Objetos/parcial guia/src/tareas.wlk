import lugares.*
import servicios.*

class Tarea{
	var fechaARealizarse
	const duracion = 1
	const lugarARealizarse
	var tareasAnteriores
	
	method fechaARealizarse(){
		return fechaARealizarse
	}
	
	method provinciaARealizarse(){
		return lugarARealizarse.provincia()
	}
	
	method superficieTotalTarea(){
		return self.superficieTarea() + self.superficieTotalSubTareas()
	}
	
	method superficieTarea(){
		return lugarARealizarse.superficie()
	}
	
	method costoTotal(){
		return self.costo() + self.costoSubTareas()
	}
	
	method gananciaTotal(){
		return self.ganancia() + self.gananciasSubTareas()
	}
	
	method superficieTotalSubTareas(){
		return tareasAnteriores.sum({ tareaAnterior => tareaAnterior.superficieTotalTarea() })
	}
	
	method costoSubTareas(){
		return tareasAnteriores.sum({ tareaAnterior => tareaAnterior.costoTotal() })
	}
	
	method gananciasSubTareas(){
		return tareasAnteriores.sum({ tareaAnterior => tareaAnterior.gananciaTotal() })
	}
	
	method costo(){ return 0 }
	method ganancia() { return 0 }
}

class TareaProduccion inherits Tarea{
	var servicios
	
	override method costo(){
		return servicios.sum({ servicio => servicio.costo() })
	}
}

class TareaRecaudacion inherits Tarea{
	const ingreso
	
	override method ganancia(){
		return ingreso
	}
}
class TareaReuniones inherits Tarea{}

