-- https://wiki.haskell.org/99_questions/11_to_20

-- 11

data Item a = Single a | Multiple a Int
    deriving (Show)

-- Two ways of doing the same thing
encode2 :: (Eq a) => [a] -> [Item a]
encode2 [] = []
encode2 (x:xs)
    | (length (filter (==x) xs) + 1) > 1 = (Multiple x (length (filter (==x) xs) + 1)):(encode2 (filter (/=x) xs))
    | otherwise = (Single x):(encode2 (filter (/=x) xs))

{-encode2' :: (Eq a) => [a] -> [Item a]
encode2' list = [if (length (filter (==y) list) ) > 1 then Multiple y (length (filter (==y) list)) else Single y | y <- list]-}

-- 12

-- REPLICATE??? WHAT IS THIS LANGUAGE??
decode2 :: [(Int, a)] -> [a]
decode2 = concatMap (uncurry replicate)

-- Literally copy and pasted code: doesn't work??
{-
decodeModified :: [ListItem a] -> [a]
decodeModified = concatMap decodeHelper
    where
      decodeHelper (Single x)     = [x]
      decodeHelper (Multiple n x) = replicate n x
-}

invert :: Bool -> Bool
invert e
    | e = False
    | otherwise = True

-- 13

-- 14

dupli :: [a] -> [a]
dupli [] = []
dupli (x:xs) = [x, x] ++ dupli xs

-- 15

repli :: [a] -> Int -> [a]
repli [] _ = []
repli (x:xs) n = (take n (cycle [x])) ++ (repli xs n)

-- 16

dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery (x:xs) n = dropEvery' (x:xs) n 1 where
    dropEvery' (x:xs) n i = (if (n `divides` i) then
        [] else
        [x])
        ++ (dropEvery' xs n (i+1))
    dropEvery' [] _ _ = []
    divides x y = y `mod` x == 0

-- Extras 1

checkListVals :: (Int -> Bool) -> [Int] -> [Bool]
checkListVals condition list = [condition x | x <- list]

isGreaterThan3 :: Int -> Bool
isGreaterThan3 x = x > 3

flip' :: (a -> b -> c) -> b -> a -> c
flip' f = \x y -> f y x

sum1 :: (Num a) => [a] -> a
sum1 [] = 0
sum1 [x] = x
sum1 (x:xs) = x + sum1 xs

sum2 :: (Num a) => [a] -> a
sum2 list = foldl (\accum x -> accum + x) 0 list
