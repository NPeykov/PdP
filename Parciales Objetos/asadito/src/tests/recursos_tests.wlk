import bandeja.*
import persona.*

const unaBandeja = new Bandeja(
	calorias = 550, 
	contieneCarne = true
)

const otraBandeja = new Bandeja( 
	calorias = 200, 
	contieneCarne = false
)

const unaPersona = new Persona(
	posicion = "2@2", 
	elementosCercanos = ["Cuchillo", "Sal", "Ensalada"], 
	criterioPersona = sordo, 
	criteriosAlimentacion = alterado, 
	comidasIngeridas = [unaBandeja, otraBandeja]
)

const otraPersona = new Persona(
	posicion = "1@1", 
	elementosCercanos = ["Cerveza"], 
	criterioPersona = normal, 
	criteriosAlimentacion = vegetariano, 
	comidasIngeridas = [otraBandeja]
)

object person inherits Persona(
	posicion = "0@0",
	elementosCercanos = ["Cuchillo", "Sal", "Ensalada", "Cerveza"], 
	criterioPersona = charlatan, 
	criteriosAlimentacion = alterado, 
	comidasIngeridas = [unaBandeja, otraBandeja]
){
	override method laEstaPasandoBien(){
		return super() && posicion == "1@1" 
	}
}