import Text.Show.Functions()

type Propiedad = (String, Int)
type Accion = (Jugador -> Jugador)

data Jugador = Jugador {
    nombre :: String,
    cantDinero :: Int,
    tactica :: String,
    propiedades :: [Propiedad],
    acciones :: [Accion]
} deriving (Show)

----------------------PARTICIPANTES------------------------

carolina :: Jugador
carolina = Jugador "Carolina" 500 "Accionista" [] [pasarPorElBanco, pagarAAccionistas]

manuel :: Jugador
manuel = Jugador "Manuel" 500 "Oferente Singular" [] [pasarPorElBanco, enojarse]

------------------------ACCIONES-------------------------
pasarPorElBanco :: Accion
pasarPorElBanco unJugador = (sumarDinero 40 unJugador) {tactica = "Comprador Compulsivo"}

sumarDinero :: Int -> Accion
sumarDinero cantidad unJugador = unJugador {cantDinero = (cantDinero unJugador) + cantidad}

enojarse :: Accion
enojarse unJugador = sumarDinero 50 unJugador {acciones = (:) gritar (acciones unJugador)}

gritar :: Accion
gritar unJugador = unJugador {nombre = "AHHHH" ++ (nombre unJugador)}

subastar :: Propiedad -> Accion
subastar propiedad unJugador 
    | cumpleConTacticasRequeridas unJugador = unJugador `ganoPropiedad` propiedad
    | otherwise = unJugador

ganoPropiedad :: Jugador -> Propiedad -> Jugador
ganoPropiedad unJugador propiedad = 
    sumarDinero (-snd propiedad) unJugador {propiedades = (:) propiedad (propiedades unJugador)}

cumpleConTacticasRequeridas :: Jugador -> Bool
cumpleConTacticasRequeridas unJugador = elem (tactica unJugador) tacticasRequeridas

tacticasRequeridas :: [String]
tacticasRequeridas = ["Oferente Singular", "Accionista"]

cobrarAlquileres :: Accion
cobrarAlquileres unJugador = sumarDinero (-totalAlquiler unJugador) unJugador

totalAlquiler :: Jugador -> Int
totalAlquiler unJugador = 10 * length (propiedadesBaratas unJugador) + 20 * (totalPropiedades unJugador - length (propiedadesBaratas unJugador))

propiedadesBaratas :: Jugador -> [Propiedad]
propiedadesBaratas unJugador = filter ((<150).snd) (propiedades unJugador)

totalPropiedades :: Jugador -> Int
totalPropiedades = length.propiedades
 
pagarAAccionistas :: Accion
pagarAAccionistas (Jugador unNombre unaCantDinero "Accionista" unaPropiedad unaAccion) = Jugador unNombre (unaCantDinero + 200) "Accionista" unaPropiedad unaAccion
pagarAAccionistas unJugador = sumarDinero (-100) unJugador


hacerBerrinchePor :: Jugador -> Propiedad -> Jugador
hacerBerrinchePor unJugador propiedad
    |hacerBerrincheMientras unJugador propiedad = hacerBerrinchePor (berrinche unJugador) propiedad
    |otherwise = restarValorPropiedadYAgregarPropiedad unJugador propiedad

restarValorPropiedadYAgregarPropiedad :: Jugador -> Propiedad -> Jugador
restarValorPropiedadYAgregarPropiedad unJugador propiedad = sumarDinero (-snd propiedad) unJugador {propiedades = (:) propiedad (propiedades unJugador)}

hacerBerrincheMientras :: Jugador -> Propiedad -> Bool
hacerBerrincheMientras unJugador propiedad = cantDinero unJugador < snd propiedad

berrinche :: Accion
berrinche unJugador = gritar (sumarDinero 10 unJugador) 

ultimaRonda :: Jugador -> Accion
ultimaRonda unJugador = foldr1 (.) (acciones unJugador)

dineroTotalFinal :: Jugador -> Int
dineroTotalFinal unJugador = cantDinero ((ultimaRonda unJugador) unJugador)

juegoFinal :: Jugador -> Jugador -> Jugador
juegoFinal unJugador otroJugador
  |dineroTotalFinal unJugador > dineroTotalFinal otroJugador = unJugador {cantDinero = dineroTotalFinal unJugador}
  |otherwise = otroJugador {cantDinero = dineroTotalFinal otroJugador}