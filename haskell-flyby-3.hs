-- I'm learning Haskell!
{-
This is great!
very fun
facinating stuff
-}

import Data.List
import System.IO

whatGrade :: Int -> String
whatGrade age
    | (age >= 5) && (age <= 6) = "Kindergarden"
    | (age >= 7) && (age <= 11) = "Elementary School"
    | (age >=12) && (age <= 14) = "Middle School"
    | (age >= 15) && (age <= 18) = "High School"
    | otherwise = "Life"

batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
    | avg <= 0.200 = "Terrible! Sad!"
    | avg <= 0.250 = "Average..."
    | avg <= 0.280 = "Ok..."
    | otherwise = "That's pretty good!"
    where avg = hits / atBats

-- Doing stuff with lists
-- Prettay prettay prettay good!

getListItems :: [Int] -> String
getListItems [] = "Boi that's an empty container"
getListItems (x:[]) = "Your list starts with " ++ (show x)
getListItems (x:y:[]) = "Your list contains " ++ (show x) ++ " and " ++ (show y)
getListItems (x:xs) = "The first is " ++ (show x) ++ " and the rest are " ++ (show xs)

getFirstItem :: String -> String
getFirstItem [] = "Headass"
getFirstItem all@(x:xs) = "The first letter in '" ++ all ++ "' is " ++ [x]


times4 :: Int -> Int
times4 x = x * 4

listTimes4 = map times4 [1, 2, 3, 4, 5]

-- what even is this?
multBy4 :: [Int] -> [Int]
multBy4 (x:xs) = times4 x : multBy4 xs -- recursion but evil
multBy4 [] = []

-- Recursion sucks in any language
-- But it's not an option in Haskell
-- f dat

areListsEq (x:xs) (y:ys) = x == y && areListsEq xs ys
areListsEq [] [] = True

-- Dude what?
-- functions in functions, crazy
doMult :: (Int -> Int) -> Int
doMult f = f 3
twelve = doMult times4
