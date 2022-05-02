import Prelude
import GHC.Float -- Importado para usar int2Float
import Data.Char -- Importado para usar digitToInt 

------------------ Ejercicio 4 ------------------------------------------
cuantosIguales:: Int -> Int -> Int -> Int
cuantosIguales a b c = 
  cuantosIgualesDeDos a b + cuantosIgualesDeDos a c + cuantosIgualesDeDos b c

cuantosIgualesDeDos:: Int -> Int -> Int
cuantosIgualesDeDos a b
  | (a == b) = 1
  | otherwise = 0

------------------ Ejercicio 5 ------------------------------------------
--A)
fibonacci:: Int -> Int
fibonacci n 
  | (n == 0) = 0
  | (n == 1) = 1
  | otherwise = fibonacci (n-1) + fibonacci (n-2)

--B)
factorial :: Int -> Int
factorial x 
  | (x == 0) = 0
  | (x == 1) = 1
  | otherwise = x * factorial(x-1)


--C)
potencia :: Int -> Int -> Int
potencia x n
  | (n == 0) = 0
  | (n == 1) = x
  | otherwise = x * potencia x (n-1)

sumatoria :: Int -> Int
sumatoria n
  | (n == 0) = 0
  | otherwise = (potencia n n) + sumatoria (n-1)

funcion :: Int -> Int -> Double
funcion x n = (fromIntegral (sumatoria n)) / (fromIntegral (factorial x))

------------------ Ejercicio 6 ------------------------------------------
nAnd :: Bool -> Bool -> Bool
nAnd a b = (a == b) && (a == True) 

------------------ Ejercicio 8 ------------------------------------------
allDiferent:: Int -> Int -> Int -> Bool
allDiferent a b c =
  (a /= b) && (a /= c) && (b /= c)

------------------ Ejercicio 10 ------------------------------------------
cuartaPotencia:: Int -> Int
cuartaPotencia x = alCuadrado(alCuadrado x)
  where
    alCuadrado :: Int -> Int
    alCuadrado a = a * a
-- Se podria hacer con x * x * x * x o con cuadX * cuadX donde cuadX = x*x

------------------ Ejercicio 12 -----------------------------------------
charAValorNumerico:: Char -> Int
charAValorNumerico a = digitToInt a --Se podria hacer un case y asociarle a cada numero en char un valor en int

------------------ Ejercicio 13 -----------------------------------------
charARomano:: Char -> String
charARomano a = case a of 
   '1' -> "I"
   '2' -> "II"
   '3' -> "III"
   '4' -> "IV"
   '5' -> "V"
   '6' -> "VI"
   '7' -> "VII"
   '8' -> "VIII"
   '9' -> "IX"
   otherwise -> "Error"

------------------ Ejercicio 14 ----------------------------------------
-- Se devuelve una string completa, para que se muestre entre lineas hay que usar putStr()
entreLineas :: String ->   String -> String -> String
entreLineas a b c = (a ++ "\n") ++ ((b ++ "\n") ++ c)

------------------ Ejercicio 15 ----------------------------------------
duplicar:: String -> Int -> String
duplicar cadena n
   |(n == 0) = ""
   |(n == 1) = cadena
   |otherwise = cadena ++ " " ++ (duplicar cadena (n-1))

------------------ Ejercicio 16 ----------------------------------------
hacerEspacio:: Int -> String
hacerEspacio n
   |(n == 0) = ""
   |otherwise = " " ++ hacerEspacio(n-1)

------------------ Ejercicio 17 ----------------------------------------
factorialTable :: Int -> Int -> String
factorialTable m n 
   |(n < m) = "ERROR"
   |(m == n) = show (factorial n) ++ "\n" 
   |otherwise = (show (factorial m)) ++ "\n" ++ (factorialTable (m+1) n)

------------------ Ejercicio 18 ----------------------------------------
-- No se entiende la consigna del ejercicio

------------------ Ejercicio 19 ----------------------------------------
minMax:: (Int,Int) -> (Int,Int)
minMax (a, b) 
   |(a <= b ) = (a , b)
   |otherwise = (b , a)

------------------ Ejercicio 20 ----------------------------------------
maxOcurr :: Int -> Int -> (Int,Int)
maxOcurr a b 
   |(a == b) = (a, 2)
   |(a > b) = (a, 1)
   |otherwise = (b , 1)

maxOcurrencia :: Int -> Int -> Int -> (Int,Int) 
maxOcurrencia a b c = 
   maxOcAux(maxOcurr a b) c
   where 
      maxOcAux :: (Int, Int) -> Int -> (Int,Int)
      maxOcAux (a,b) c 
         | (a == c) = (a, (b+1))
         | (a > c) = (a, b)
         | otherwise = (c, 1)

------------------ Ejercicio 21 ----------------------------------------
ordenTriple:: (Int,Int,Int) -> (Int,Int,Int)
ordenTriple (a, b, c)
   | (a <= b) && (b <= c) = (a,b,c)
   | (a > b) = ordenTriple(b,a,c)
   | (b > c) = ordenTriple(a,c,b)

------------------ Ejercicio 22 ----------------------------------------


------------------ Ejercicio 23 ----------------------------------------
menMay:: (Int,Int) -> (Int,Int) -> (Int,Int) -> (Int,Int)
menMay (a1,a2) (b1,b2) (c1,c2) = mMAux(mMAux (a1,a2) (b1,b2))(c1,c2)
    where
       mMAux:: (Int,Int) -> (Int,Int) -> (Int,Int)
       mMAux (a,b) (c,d) = menMayTupla(minMax(a,b)) (minMax(c,d)) 
          
menMayTupla:: (Int,Int) -> (Int,Int) -> (Int,Int) 
menMayTupla (a,b) (c,d) = (men,may)
   where
      men = menor a c
      may = mayor b d

menor:: Int -> Int -> Int
menor x y 
   |(x <= y) = x
   |otherwise = y

mayor:: Int -> Int -> Int
mayor x y 
   |(x >= y) = x
   |otherwise = y

------------------ Ejercicio 24 ----------------------------------------
funcionRara:: Int -> String
funcionRara x 
   |((x `div` 10) == 0) = impVeces x x
   |otherwise = funcionRara (x `div` 10) ++ impVeces n n
      where
         n = x `mod` 10

impVeces:: Int -> Int -> String
impVeces num n
   |(n == 0) = "\n"
   |(n == 1) = show num ++ "\n"
   |otherwise = (show num) ++ (impVeces num (n-1))
  
------------------ Ejercicio 25 ----------------------------------------
alinear:: String -> String -> String -> Int -> String
alinear cad1 cad2 cad3 n
   = cad1 ++ hacerEspacio n ++ cad2 ++ hacerEspacio n ++ cad3

------------------ Ejercicio 26 ----------------------------------------
bisiesto:: Int -> Int -> String
bisiesto n m = recorreBis [n .. m]

recorreBis:: [Int] -> String
recorreBis n
   | (length n == 1) = show(anio) ++ esBisiesto anio ++ "\n"
   |otherwise = show(anio) ++ esBisiesto anio ++ "\n" ++ recorreBis(tail n)
      where
         anio = head n

esBisiesto:: Int -> String
esBisiesto anio =
   if ((anio `mod` 4) == 0) && ((anio `mod` 100) /= 0 || (anio `mod` 400) == 0) 
      then bis
      else noBis
         where
            bis = " bisiesto"
            noBis = " no bisiesto"

------------------ Ejercicio 27 ----------------------------------------
multiplos :: (Int, Int, Int) -> String
multiplos (a,b,c) = listarMultiplos [a .. b] c

listarMultiplos :: [Int] -> Int -> String
listarMultiplos lista x 
   |(length lista == 1) = esMultiplo num x
   |otherwise = esMultiplo num x ++ listarMultiplos (tail lista) x
      where 
         num = head lista

esMultiplo :: Int -> Int -> String
esMultiplo a mult 
   |((a `mod` mult) == 0) = show a ++ " "
   |otherwise = ""

------------------ Ejercicio 28 ----------------------------------------
intervalo :: (Int,Int) -> String
intervalo (a,b) = cuadPerf[a .. b] 1

cuadPerf :: [Int] -> Int -> String
cuadPerf lista pos
   | (length lista == 0) = ""
   | ((esCuadPerf (int2Float num)) == True) = show num ++ "\t" ++ show pos ++ "\n" ++ siguiente
   | otherwise = siguiente
      where
         num = head lista
	 siguiente = cuadPerf (tail lista) (pos+1)

esCuadPerf :: Float -> Bool
esCuadPerf a = ((trunc - num) == 0)
    where
        num = sqrt a
	trunc = int2Float(truncate num)







