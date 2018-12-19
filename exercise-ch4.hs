-- Exercise 4.1

halve :: [a] -> ([a], [a])
halve xs = (take halfLength xs, drop halfLength xs)
  where halfLength = length xs `div` 2

-- Exercise 4.2

-- a
third1 xs = head $ tail $ tail xs
-- b
third2 xs = xs !! 2
-- c
third3 (_:_:x:_) = x

-- Exercise 4.3
-- a
safetail :: [a] -> [a]
safetail xs = if null xs then
                xs
              else
                tail xs
  
-- b
safetail2 xs
  | null xs = xs
  | otherwise = tail xs
-- c
safetail3 [] = []
safetail3 xs = tail xs


-- Exercise 4.4
-- 1
(||) :: Bool -> Bool -> Bool
a || b
  | a = a
  | b = b
  | otherwise = False

-- Exercise 4.5
a && b = if a then
           if b then
             True
           else
             False
         else
           False
              
-- Exercise 4.6
a &&& b = if a then
            b
          else
            False

-- Exercise 4.7
mult :: Int -> (Int -> (Int -> Int))
mult = \x -> \y -> \z -> x * y * z

-- Exercise 4.8
luhnDouble x
  | x2 > 9 = x2 - 9
  | otherwise = x2
  where x2 = x * 2

