num :: Int->String
num n
    | n==0 = ""
    | n==1 = "uno"
    | n==2 = "dos"
    | n==3 = "tres"
    | n==4 = "cuatro"
    | n==5 = "cinco"
    | n==6 = "seis"
    | n==7 = "siete"
    | n==8 = "ocho"
    | n==9 = "nueve"
    | n==10 = "diez"
    | n==11 = "once"
    | n==12 = "doce"
    | n==13 = "trece"
    | n==14 = "catorce"
    | n==15 = "quince"
    | n==16 = "dieciseis"
    | n==17 = "diecisiete"
    | n==18 = "dieciocho"
    | n==19 = "diecinueve"
    | n==20 = "veinte"
    | n==30 = "treinta"
    | n==40 = "cuarenta"
    | n==50 = "cincuenta"
    | n==60 = "sesenta"
    | n==70 = "setenta"
    | n==80 = "ochenta"
    | n==90 = "noventa"
    | n<100 = num((n`div`10)*10) ++ " y " ++ num(n `mod` 10)
    | n == 100 = "cien"
    | n == 200 = "docientos"
    | n == 300 = "trescientos"
    | n == 400 = "cuatrocientos"
    | n == 500 = "quinientos"
    | n == 600 = "seisientos"
    | n == 700 = "setecientos"
    | n == 800 = "ochocientos"
    | n == 900 = "novecientos"
    | n>100 && n<200 = "ciento " ++ num(n-100) 
    | n>200 && n<300 = "doscientos " ++ num(n-200) 
    | n>300 && n<400 = "trecientos " ++ num(n-300) 
    | n>400 && n<500 = "cuatrocientos " ++ num(n-400) 
    | n>500 && n<600 = "quinientos " ++ num(n-500) 
    | n>600 && n<700 = "seisientos " ++ num(n-600) 
    | n>700 && n<800 = "setecientos " ++ num(n-700) 
    | n>800 && n<900 = "ochocientos " ++ num(n-800) 
    | n>900 && n<1000 = "novecientos " ++ num(n-900) 
    | n == 1000 = "mil"
    | n == 2000 =  "dos mil"
    | n == 3000 =  "tres mil"
    | n == 4000 =  "cuatro mil"
    | n == 5000 =  "cinco mil"
    | n == 6000 =  "seis mil"
    | n == 7000 =  "siete mil"
    | n == 8000 =  "ocho mil"
    | n == 9000 =  "nueve mil"
    | n == 10000 =  "diez mil"
    | n > 100000 && n < 102000  =  "ciento un  " ++ num(n-100000) 
    | n > 200000 && n < 202000 = "doscientos un  " ++ num(n-200000) 
    | n > 300000 && n < 302000 =  "trecientos un " ++ num(n-300000) 
    | n > 400000 && n < 402000 =  "cuatrocientos un " ++ num(n-400000) 
    | n > 500000 && n < 502000=  "quinientos un  " ++ num(n-500000) 
    | n > 600000 && n < 602000 =  "seisientos un  " ++ num(n-600000) 
    | n > 700000 && n < 702000 =  "setecientos un  " ++ num(n-700000) 
    | n > 800000 && n < 802000 =  "ochocientos un  " ++ num(n-800000) 
    | n > 900000 && n < 902000 =  "novecientos un  " ++ num(n-900000) 
    | n>1000 && n<2000 = "mil " ++ num(n-1000) 
    | n>2000 && n<3000 = "dos mil " ++ num(n-2000) 
    | n>3000 && n<4000 = "tres mil " ++ num(n-3000) 
    | n>4000 && n<5000 = "cuatro mil " ++ num(n-4000) 
    | n>5000 && n<6000 = "cinco mil " ++ num(n-5000) 
    | n>6000 && n<7000 = "seis mil " ++ num(n-6000) 
    | n>7000 && n<8000 = "siete mil " ++ num(n-7000) 
    | n>8000 && n<9000 = "ocho mil " ++ num(n-8000) 
    | n>9000 && n<10000 = "nueve mil " ++ num(n-9000)
    | n > 10000 && n<1000000=  ""++num(n`div`1000) ++ " mil "++ num(n`mod`1000)
    | n == 1000000 = "un millon"
    | n > 1000000 = "numero fuera de rango, intente nuevamente con un numero con valor entre cero y un millon"
    
    