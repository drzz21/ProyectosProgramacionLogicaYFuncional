-- distancia entre dos puntos
distancia (x1,y1) (x2,y2) = sqrt (((x1-x2)^2)+((y1-y2)^2))
-- permutación ciclica
ciclo [] = [] 
ciclo c = last c : init c
-- heron
area a b c = sqrt (s*(s-a)*(s-b)*(s-c)) 
    where s = (a+b+c)/2