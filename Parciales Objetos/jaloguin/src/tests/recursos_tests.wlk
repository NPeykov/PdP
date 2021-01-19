import chicos.*
import adultos.*
import accesorios.*
import legiones.*
import barrios.*

const chico1 = new Chicxs(
	accesorios = [unMaquillaje, unTrajeTerrorifico], 
	actitud = 8,
	caramelos = 12)
	
const chica2 = new Chicxs(
	accesorios = [unMaquillaje, unTrajeTierno], 
	actitud = 5,
	caramelos = 20)

const chica3 = new Chicxs(
	accesorios = [unMaquillaje], 
	actitud = 6,
	caramelos = 35)
	
const chico4 = new Chicxs(
	accesorios = [unMaquillaje, otroTrajeTierno], 
	actitud = 2,
	caramelos = 5)


const unMaquillaje = new Maquillaje()
const unTrajeTerrorifico = new TrajeTerrorifico()
const unTrajeTierno = new TrajeTierno()
const otroTrajeTierno = new TrajeTierno()

const unAdultoNormal = new AdultoComun(chicosQueIntentaronAsustarlo = #{chico1, chica2, chica3})
const unAbuelo = new Abuelo(chicosQueIntentaronAsustarlo = #{chico4, chica2, chica3})
const unAdultoNecio = new AdultoNecio(chicosQueIntentaronAsustarlo = #{})


const unaLegion = new Legion(miembros = #{chico1, chica2, chica3})

const unBarrio = new Barrio(chicos = #{chico1, chica2, chica3, chico4})