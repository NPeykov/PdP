import carpa.*


const unaCervezaBelga = new Cerveza(graduacionAlcohol = 0.07, paisOrigen = "Belgica")
const unaCervezaFuerte = new Cerveza (graduacionAlcohol = 0.09, paisOrigen = "Suiza")
const unaCervezaSuave = new Cerveza (graduacionAlcohol = 0.02, paisOrigen = "Holanda")

const unaJarraBelga = new JarraCerveza(marcaCerveza = unaCervezaBelga, capacidadEnLitros = 1)
const unaJarraFuerte = new JarraCerveza(marcaCerveza = unaCervezaFuerte, capacidadEnLitros = 2)

const unaCarpaConMusica = new CarpaCervecera(
	personas=#{}, 
	capacidadLimite = 5, 
	tieneBandaMusical = true, 
	jarraCervezaEnVenta = unaJarraBelga
)
const unaCarpaSinMusica = new CarpaCervecera(
	personas=#{personaBelga, personaCheca}, 
	capacidadLimite = 2, 
	tieneBandaMusical = false, 
	jarraCervezaEnVenta = unaJarraFuerte
)

const personaAlemana = new Aleman(
	peso = 60, 
	jarrasCompradas = [unaJarraBelga, unaJarraFuerte], 
	leGustaMusicaClasica = false, 
	aguante = 10
)

const personaBelga = new Belga(
	peso = 45, 
	jarrasCompradas = [], 
	leGustaMusicaClasica = true, 
	aguante = 12
)

const personaCheca = new Checo(
	peso = 60, 
	jarrasCompradas = [unaJarraFuerte], 
	leGustaMusicaClasica = true, 
	aguante = 15
)

