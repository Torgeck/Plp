import Data.List
import System.IO

negNumEx = 5 + (-4)
num9 = 9 :: Int
sqrtOf9 = sqrt(fromIntegral num9)

---------------------------------------------
--               Punto 2                   --
---------------------------------------------

losCuatrosIguales :: Int -> Int -> Int -> Int -> Bool
losCuatrosIguales a b c d = (a == b) && (b == c) && (c == d)

