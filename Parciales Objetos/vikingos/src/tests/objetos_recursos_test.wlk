import expediciones.* 
import vikingos.*
import profesiones.*
import castas_sociales.*
import lugares_objetivos.*
import castas_sociales.*


//// VIKINGOS

const pepe = new Vikingo(
	cantidadDeOro = 5,
	castaSocial = jarl, 
	profesion = granjero, 
	vidasCobradas = 30, 
	armas = 0, 
	hectareasDesignadas = 7, 
	cantidadDeHijos = 3
)

const pepa = new Vikingo(
	cantidadDeOro = 10,
	castaSocial = thrall, 
	profesion = soldado, 
	vidasCobradas = 30, 
	armas = 1, 
	hectareasDesignadas = 7, 
	cantidadDeHijos = 3
)

const vik = new Vikingo(
	cantidadDeOro = 0,
	castaSocial = karl, 
	profesion = granjero, 
	vidasCobradas = 30, 
	armas = 0, 
	hectareasDesignadas = 20, 
	cantidadDeHijos = 3
)

const vok = new Vikingo(
	cantidadDeOro = 10,
	castaSocial = jarl, 
	profesion = soldado, 
	vidasCobradas = 30, 
	armas = 2, 
	hectareasDesignadas = 7, 
	cantidadDeHijos = 3
)

const vak = new Vikingo(
	cantidadDeOro = 2,
	castaSocial = thrall, 
	profesion = soldado, 
	vidasCobradas = 25, 
	armas = 1, 
	hectareasDesignadas = 7, 
	cantidadDeHijos = 3
)

/// LUGARES

const unaCapital = new Capital(
	factorRiqueza = 0.9,
	cantidadDeDefensores = 200
)

const unaAldea = new Aldea (cantidadDeCrucifijos = 42)

const unaAldeaAmurallada = new AldeaAmurallada (cantidadDeCrucifijos = 60, cantidadMinimaDeVikingos = 2)

const otraAldeaAmurallada = new AldeaAmurallada (cantidadDeCrucifijos = 69, cantidadMinimaDeVikingos = 5)

const otraCapital = new Capital(
	factorRiqueza = 0.1,
	cantidadDeDefensores = 30
)


// EXPEDICIONES

const expedicion1 = new Expedicion(
	vikingos = #{vik, vok, vak}, 
	objetivos = #{unaCapital, unaAldea, unaAldeaAmurallada}
)

const conquista1 = new Expedicion(vikingos = #{}, objetivos = #{})
