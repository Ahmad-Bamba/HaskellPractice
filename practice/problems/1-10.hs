--99 Questions: https://wiki.haskell.org/99_questions/1_to_10

-- 1

myLast :: [a] -> a
myLast [] = error "Hey bud why are you trying to get the last element of an empty container!?"
myLast [x] = x
myLast (x:xs) = myLast xs

-- 2

myButLast :: [a] -> a
myButLast [] = error "Seriously nibba get ur shit together"
myButLast [x] = x
myButLast [x,y] = x
myButLast list = myButLast (tail list)

-- 3

-- remember that a, b, etc are types, not typeclasses. You can stick int there if you wanna
elementAt :: [a] -> Int -> a
elementAt [] _ = error "Dude stop."
elementAt (x:xs) 0 = x
elementAt (x:xs) at
                | at >= length (x:xs) = error "Invalid index"
                | otherwise = elementAt xs (at - 1)

-- 4

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + (myLength xs)

-- 5

myReverse :: [a] -> [a]
myReverse [] = []
myReverse list = [last list] ++ myReverse (init list)

-- 6
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome (x:xs) = (x == (last xs)) && (isPalindrome (init xs))

-- 7

data NestedList a = Elem a | List [NestedList a]
    deriving (Show)
flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List x) = concatMap flatten x

-- 8

-- Haskell is black magic
compress :: (Eq a) => [a] -> [a]
compress (x:ys@(y:_)) -- woah I didn't even know this was a thing
    | x == y = compress ys
    | otherwise = x:(compress ys)
compress ys = ys

-- 9

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x:xs) = (x:(filter (==x) xs)):(pack (filter (/=x) xs))

-- 10

encode :: (Eq a) => [a] -> [(a, Int)]
encode [] = []
encode (x:xs) = ((x, (length (filter (==x) xs) + 1))):(encode (filter (/=x) xs))
