import emocion.*

class Recuerdo{
	const evento
	var descripcion
	var fecha
	var emocion
	var esRecuerdoCentral = false
	
	method emocion(){
		return emocion
	}
	
	method esRecuerdoCentral(){
		return esRecuerdoCentral
	}
	
	method centralizar(){
		esRecuerdoCentral = true
	}
	
	method asentarse(persona){
		return emocion.asentarRecuerdo(self, persona)
	}
	
	method contienePalabra(palabraClave){
		return descripcion.words().contains(palabraClave)
	}
	
	method esDificilDeExplicar(){
		return descripcion.words() > 10 //se dice que tomemos como que existe el metodo words
	}								   
}