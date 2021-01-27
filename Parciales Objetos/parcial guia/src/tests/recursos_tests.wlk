import tareas.*
import proyecto.*
import lugares.*
import servicios.*

// const desinfeccion = new Servicio(costo = 45) 
const unServicio = new Servicio (costo = 20)

const unaOficina = new Oficina(direccion = "123", ciudad = unaCiudad, superficie = 50)
const otraOficina = new Oficina(direccion = "456", ciudad = otraCiudad, superficie = 30)
const unaCiudad = new Ciudad(provincia = "Buenos Aires", superficie = 80)
const otraCiudad = new Ciudad(provincia = "Mendoza", superficie = 120)
const unaZonaRural = new ZonaRural(provincia = "Cordoba", ancho = 3, largo = 5)
const otraZonaRural = new ZonaRural(provincia = "Neuquen", ancho = 5, largo = 5)



const unaTarea11 = new TareaReuniones(
	fechaARealizarse = new Date(day=5, month=10, year=2016), 
	lugarARealizarse = unaOficina, 
	tareasAnteriores = #{unaTarea21, unaTarea22})
const unaTarea12 = new TareaReuniones(
	fechaARealizarse = new Date(day=6, month=10, year=2016), 
	lugarARealizarse = otraOficina, 
	tareasAnteriores = #{})
const unaTarea21 = new TareaReuniones(
	fechaARealizarse = new Date(day=10, month=10, year=2016), 
	lugarARealizarse = otraCiudad, 
	tareasAnteriores = #{unaTarea31, unaTarea32, unaTarea33})
const unaTarea22 = new TareaReuniones(
	fechaARealizarse = new Date(day=15, month=10, year=2016), 
	lugarARealizarse = unaCiudad, 
	tareasAnteriores = #{})
const unaTarea31 = new TareaReuniones(
	fechaARealizarse = new Date(day=12, month=10, year=2016), 
	lugarARealizarse = unaOficina, 
	tareasAnteriores = #{})
const unaTarea32 = new TareaReuniones(
	fechaARealizarse = new Date(day=15, month=10, year=2016), 
	lugarARealizarse = otraZonaRural, 
	tareasAnteriores = #{})
const unaTarea33 = new TareaReuniones(
	fechaARealizarse = new Date(day=16, month=10, year=2016), 
	lugarARealizarse = unaCiudad, 
	tareasAnteriores = #{})
