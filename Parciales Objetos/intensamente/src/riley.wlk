import emocion.*
import recuerdo.*
import proceso.*

object riley {
	var felicidad = 1000
	var emocionDominante
	var recuerdosDelDia
	var procesosMentales
	
	method vivirEvento(unEvento, descripcionEvento){
		const recuerdo = new Recuerdo(
			evento = unEvento, 
			descripcion = descripcionEvento,
			fecha = new Date(),
			emocion = emocionDominante)
		
		recuerdosDelDia.add(recuerdo)
	}
	
	method asentarRecuerdo(recuerdo){
		recuerdo.asentarse(self)
	}
	
	method disminuirFelicidad(porcentaje){
		const nuevaFelicidad = felicidad - felicidad * porcentaje / 100
		if(nuevaFelicidad < 1){
			throw new Exception (message = "La nueva felicidad debe ser mayor a 1!")
		}
		else felicidad = nuevaFelicidad
	}
	
	method pensamientosCentrales(){ 
		return recuerdosDelDia.filter({recuerdo => recuerdo.esRecuerdoCentral()})   
	}
									
	method pensamientosCentralesDificilesDeExplicar(){
		return self.pensamientosCentrales().filter({recuerdo => recuerdo.esDificilDeExplicar()})
	}
	
	method negarRecuerdo(recuerdo){
		return emocionDominante.niegaRecuerdo(recuerdo)
	}
	
	method dormir(){
		procesosMentales.forEach({proceso => proceso.manifestarse()})
	}
	
	method asentarTodosLosRecuerdos(){
		self.asentarRecuerdos(recuerdosDelDia)
	}
	
	method asentarRecuerdos(recuerdos){
		recuerdos.forEach({recuerdo => self.asentarRecuerdo(recuerdo)})
	}
	
	method recuerdosConPalabraClave(palabraClave){
		return recuerdosDelDia.filter({recuerdo => recuerdo.contienePalabra(palabraClave)})
	}
	
	method asentarRecuerdosConPalabra(palabraClave){
		const recuerdos = self.recuerdosConPalabraClave(palabraClave)
		self.asentarRecuerdos(recuerdos)
	}
	
	method restaurarFelicidad(cantidad){
		felicidad = 1000.min(cantidad + felicidad)
	}
}







