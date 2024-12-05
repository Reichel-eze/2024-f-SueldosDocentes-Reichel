module Library where
import PdePreludat

-- IMPLEMENTAMOS sueldo de un docente
sueldo :: String -> Number -> Number -> Number
sueldo cargo anios horas = 
    basicoPorCargo cargo * antiguedad anios * cantidadHoras horas

-- IMPLEMENTAMOS basicoPorCargo 
basicoPorCargo :: String -> Number
basicoPorCargo "titular" = 14900
basicoPorCargo "adjunto" = 116000
basicoPorCargo "ayudante" = 66000

-- IMPLEMENTAMOS antiguedad 
antiguedad :: Number -> Number
antiguedad anios
    | anios >= 24 = 2.20 
    | anios >= 10 = 1.5
    | anios >= 5 = 1.3
    | anios >= 3 = 1.2
    | otherwise = 1

-- IMPLEMENTAMOS cantidadHoras
cantidadHoras :: Number -> Number
cantidadHoras horas = round(horas / 10) -- es un redondeo normal
-- Por ejemplo si son 30hs ---> 30/10 = 3

-- Algunos Ejemplos

-- 1) Un "adjunto" con 10 años de antigüedad trabajando 24hs cobra $116.000 * 150% * 2 = $348000
--    Consulta:  > sueldo "adjunto" 10 24 
--    Respuesta: 348000

-- 2) Consulta:  > sueldo "titular" 7 24 
--    Respuesta: 387400

-- 3) Consulta:  > sueldo "ayudante" 20 13 
--    Respuesta: 99000