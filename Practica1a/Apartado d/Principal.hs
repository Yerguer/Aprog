module Principal where
  import GHC.List

  -- Funcion recursiva que dado un entero n y un elemento x,
  --  repite en una lista n veces el elemento x.
  miReplicate :: Int -> a -> [a]
  miReplicate 1 x = [x] -- Caso base
  miReplicate n x = [x] ++ miReplicate (n-1) x

  -- replicate original:
  --  replicate n x = take n (repeat x)

  miFilter :: (a -> Bool) -> [a] -> [a]
  miFilter _pred []    = []
  miFilter pred (x:xs)
          | pred x         = x : filter pred xs
          | otherwise      = filter pred xs

  main :: IO()
  main = do print (miReplicate 3 "Wololo")
            print (miReplicate 3 True)
            print (miReplicate 3 5)
            print (miFilter (>5) [5,6,7,8])
