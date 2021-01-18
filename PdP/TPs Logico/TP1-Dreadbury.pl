/*
Quien mata es porque odia a su víctima y no es más rico que ella. Además, quien mata debe vivir en la mansión Dreadbury.
Tía Agatha, el carnicero y Charles son las únicas personas que viven en la mansión Dreadbury.
Charles odia a todas las personas de la mansión que no son odiadas por la tía Agatha.
Agatha odia a todos los que viven en la mansión, excepto al carnicero.
Quien no es odiado por el carnicero y vive en la mansión, es más rico que tía Agatha
El carnicero odia a las mismas personas que odia tía Agatha.
*/

viveEnLaMansion(tiaAgatha).
viveEnLaMansion(elCarnicero).
viveEnLaMansion(charles).

mata(Alguien, Victima) :-               %Mata alguien a su victima.
    odia(Alguien, Victima),             %Odia alguien a su victima.
    not(masRico(Alguien, Victima)),
    viveEnLaMansion(Alguien).

odia(Alguien, Persona) :-
    viveEnLaMansion(Persona),
    esOdiado(Persona, Alguien).          %Odia segun unos criterios.

esOdiado(Persona, tiaAgatha) :-          %Criterios de cada persona, "esOdiado" seria (una persona es odiada si se cumple...)
    Persona \= elCarnicero.
esOdiado(Persona, charles):-
    not(esOdiado(Persona, tiaAgatha)).
esOdiado(Persona, elCarnicero) :-
    esOdiado(Persona, tiaAgatha).

masRico(Persona, tiaAgatha) :-
    viveEnLaMansion(Persona),
    not(odia(elCarnicero, Persona)).

%--------------------------------------------------------------------

/*
El programa debe resolver el problema de quién mató a la tía Agatha. 
Mostrar la consulta utilizada y la respuesta obtenida.
*/

%Al querer saber quien mato a la tía agatha mediante "mata(Alguien, tiaAgatha)" la conclusión es que se suicidó (ese alguien es tía Agatha).

%---------------------------------------------------------------------

/*
Agregar los mínimos hechos y reglas necesarios para poder consultar:
- Si existe alguien que odie a milhouse.
- A quién odia charles.
- El nombre de quien odia a agatha.
- Todos los odiadores y sus odiados.
- Si es cierto que el carnicero odia a alguien.
Mostrar las consultas utilizadas para conseguir lo anterior, junto con las respuestas obtenidas.
*/

%RESPUESTAS:

%Para saber si existe una persona que odia a milhouse se consulta "odia(_, milhouse)." que da como resultado false.

%Consultando "odia(charles, Alguien)" nos dice que charles odia al carnicero.

%tía Agatha odia a charles y a ella misma. Lo sabemos preguntando "odia(tiaAgatha, Alguien)"

/* Preguntando si "odia(Alguien, OtroAlguien)." sabemos:
tía Agatha odia a tía Agatha.
tía Agatha odia a Charles.
El Carnicero odia a tía Agatha.
El Carnicero odia a Charles.
Charles odia al Carnicero.
*/

% Si, sabemos por el punto anterior que si, y lo podemos confirmar consultando "odia(elCarnicero,_)." que devuelve true.
