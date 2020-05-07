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
pasarPorElBanco unJugador = unJugador {cantDinero = sumarDinero 40 unJugador, tactica = "Comprador Compulsivo"}

sumarDinero :: Int -> Jugador -> Int
sumarDinero cantidadDinero = (+ cantidadDinero).cantDinero

enojarse :: Accion
enojarse unJugador = unJugador {cantDinero = sumarDinero 50 unJugador, acciones = (acciones unJugador) ++ [gritar]}

gritar :: Accion
gritar unJugador = unJugador {nombre = "AHHHH" ++ (nombre unJugador)}

subastar :: Propiedad -> Accion
subastar propiedad unJugador 
    | cumpleConTacticasRequeridas unJugador = unJugador `ganoPropiedad` propiedad
    | otherwise = unJugador

ganoPropiedad :: Jugador -> Propiedad -> Jugador
ganoPropiedad unJugador propiedad = 
    unJugador {cantDinero = sumarDinero (-snd propiedad) unJugador, propiedades = (propiedades unJugador) ++ [propiedad]}

cumpleConTacticasRequeridas :: Jugador -> Bool
cumpleConTacticasRequeridas unJugador = any (== (tactica unJugador)) tacticasRequeridas

tacticasRequeridas :: [String]
tacticasRequeridas = ["Oferente Singular", "Accionista"]

cobrarAlquileres :: Accion
cobrarAlquileres unJugador = unJugador {cantDinero = sumarDinero (-totalAlquiler unJugador) unJugador}

totalAlquiler :: Jugador -> Int
totalAlquiler unJugador = (-10) * (length (propiedadesBaratas unJugador)) + 20 * (length (propiedades unJugador))

propiedadesBaratas :: Jugador -> [Propiedad]
propiedadesBaratas unJugador = filter ((<150).snd) (propiedades unJugador)

pagarAAccionistas :: Accion
pagarAAccionistas unJugador
    |tactica unJugador == "Accionista" = unJugador {cantDinero = sumarDinero 200 unJugador}
    |otherwise = unJugador {cantDinero = sumarDinero (-100) unJugador}
