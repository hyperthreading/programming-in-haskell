-- Exercise 3.1

a1 :: [Char]
a1 = ['a', 'b', 'c']

a2 :: (Char, Char, Char)
a2 = ('a', 'b', 'c')

a3 :: [(Bool, Char)]
a3 = [(False, '0'), (True, '1')]

a4 :: ([Bool], [Char])
a4 = ([False, True], ['0', '1'])

a5 :: [[a] -> [a]]
a5 = [tail, init, reverse]

-- Exercise 3.2

bools :: [Bool]
bools = [True]

nums :: [[Int]]
nums = [[1, 2]]

add :: Int -> Int -> Int -> Int
add x y z = x + y + z

copy :: a -> (a,a)
copy x = (x,x)

apply :: (a -> b) -> a -> b
apply f = f

-- Exercise 3.3

second :: [a] -> a
second xs = head (tail xs)

swap :: (a,b) -> (b,a)
swap (x,y) = (y,x)

pair :: a -> b -> (a, b)
pair x y = (x, y)

double :: Num a => a -> a
double x = x*2

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs

twice :: (a -> a) -> a -> a
twice f x = f (f x)

