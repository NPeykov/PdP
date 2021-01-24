import tareas.*

class Proyecto{
	var tareas
	var presupuesto
	
	method provinciasConActividadEntre(unaFecha, otraFecha){
		return self.tareasEntre(unaFecha, otraFecha).forEach({tarea => tarea.provincia()})
	}
	
	method tareasEntre(unaFecha, otraFecha){
		return tareas.filter({ tarea => tarea.fechaARealizarse().beetween(unaFecha, otraFecha) })
	}
	
	method superfiePromedio(){
		return tareas.sum({tarea => tarea.superficieTotal()}) / tareas.size()
	}
	
	method saldoEn(fecha){
		return presupuesto + self.gananciasACiertaFecha(fecha) - self.costosACiertaFecha(fecha)
	}
	
	method tareasVigentesHasta(fecha){
		const hoy = new Date()
		return self.tareasEntre(hoy, fecha)
	}
	
	method gananciasACiertaFecha(fecha){
		return self.tareasVigentesHasta(fecha).sum({ tarea => tarea.gananciaTotal() })
	}
	
	method costosACiertaFecha(fecha){
		return self.tareasVigentesHasta(fecha).sum({ tarea => tarea.costoTotal() })
	}
	
	method sePuedeRealizar(tarea){
		const presupuestoALaFecha = self.gananciasACiertaFecha(tarea.fechaARealizarse())
		return tarea.sePuedeHacer(presupuestoALaFecha)
	}
	
	method esCoherente(fecha){
		return tareas.all({tarea => self.sePuedeRealizar(tarea)})
	}
}






