n = a `div` length xs
    where
      a = 10
      xs = [1..5]

myLast [x] = x
myLast (x:xs) = myLast xs

myLast2 xs
  | length xs == 1 = head xs
  | otherwise = myLast2 $ tail xs

myLast3 xs = head $ reverse xs

myInit [x] = []
myInit (x:xs) = x : myInit xs

myInit2 xs
  | length xs == 1 = []
  | otherwise = head xs : (myInit2 $ tail xs)

myInit3 xs = reverse (tail $ reverse xs)

