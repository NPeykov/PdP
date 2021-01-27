import fiesta.*
import disfraz.*
import personalidad.*
import invitado.*


const unaFiesta = new Fiesta(
	lugar = "Lomas", 
	fecha = new Date(day = 8, month = 12, year = 2020), 
	invitados = #{unInvitadoNumerologo, unInvitadoPretencioso})
	
const unInvitadoNumerologo = new InvitadoNumerologo(
	puntajeDeseado = 11, 
	disfraz = unDisfraz, 
	edad = 29, 
	personalidad = invitadoTaciturna)
	
const unInvitadoPretencioso = new InvitadoPretencioso(
	fechaActual = new Date(day = 25, month = 11, year = 2020),
	disfraz = otroDisfraz, 
	edad = 25, 
	personalidad = invitadoTaciturna)
	
const unDisfraz = new Disfraz(
	nombreDisfraz = "pogger", 
	fechaConfeccion = new Date(day = 6, month = 11, year = 2020), 
	caracteristicas = #{caracteristicaGraciosa, caracteristicaTobara})

const otroDisfraz = new Disfraz(
	nombreDisfraz = "fedx", 
	fechaConfeccion = new Date(day = 3, month = 11, year = 2020), 
	caracteristicas = #{caracteristicaGraciosa, caracteristicaTobara2})

	
const caracteristicaGraciosa = new DisfrazGracioso(
	nivelGracia = 2)

const caracteristicaTobara = new DisfrazTobara(
	fechaCompra = new Date(day = 6, month = 12, year = 2020))

const caracteristicaTobara2 = new DisfrazTobara(
	fechaCompra = new Date(day = 7, month = 12, year = 2020))

