import tipoPersona.*
import suenio.*
import persona.*
import suenioMultiple.*


//PERSONAS
const unaPersona = new Persona(
	suenios = #{adoptar2, recibirseQuimica, laburar20k, unSuenioMultiple}, 
	edad = 24, 
	carrerasDeseadas = ["Medicina", "Abogacia", "Filosofia"], 
	carrerasHechas = ["Quimica", "Programacion"], 
	sueldoDeseado = 23000, 
	destinosDeseados = ["neuquen, mendoza"], 
	hijos = 0, 
	tipoPersona = realista, 
	felicidonios = 200)
	
const otraPersona = new Persona(
	suenios = #{recibirseFilosofia, laburar25k}, 
	edad = 32, 
	carrerasDeseadas = ["Fisica", "Economia", "Quimica"], 
	carrerasHechas = ["Filosofia"], 
	sueldoDeseado = 15000, 
	destinosDeseados = ["las toninas"], 
	hijos = 2, 
	tipoPersona = obsesivo, 
	felicidonios = 150)
	
//SUEÑOS
const adoptar2 = new AdoptarHijo(cantidad = 2, felicidonios = 25)
const laburar20k = new ConseguirLaburo(sueldo = 20000, felicidonios = 50)
const recibirseQuimica = new RecibirseCarrera(nombreCarrera = "Quimica", felicidonios = 60)

const recibirseAmbicioso = new RecibirseCarrera(nombreCarrera = "Filosofia", felicidonios = 150)
const laburarAmbicioso = new ConseguirLaburo(sueldo = 25000, felicidonios = 120)
const adoptarAmbicioso = new AdoptarHijo(cantidad = 3, felicidonios = 101)

const recibirseFilosofia = new RecibirseCarrera(nombreCarrera = "Filosofia", felicidonios = 80)
const laburar25k = new ConseguirLaburo(sueldo = 25000, felicidonios = 70)
const adoptar3 = new AdoptarHijo(cantidad = 3, felicidonios = 55)

const unSuenioMultiple = new SuenioMultiple(suenios = #{recibirseFilosofia, laburar25k, adoptar3})

