module Principal where
  import Quick
  
  main :: IO()
  main = do print (quicksort [3,1,5,9,2,6])
            print (quicksort [1,3,2])
