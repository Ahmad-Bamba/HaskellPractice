-- I'm learning Haskell!
{-
This is great!
very fun
facinating stuff
-}

import Data.List
import System.IO

isInt x = x == fromInteger(round x)

myList = [0..200]
perfectSquares = [ n | n <- myList, isInt (sqrt n) ]
mySecondList = ['a'..'d'] ++ ['E'..'Q']
best_char = last (reverse mySecondList)

thisFuncHasTwoParameters a b = 2 * (a - b)
evenSquares = [ n | n <- perfectSquares, ((round n) `mod` 2) == 0]

tenTwos = take 10 (cycle [2])
squaresMinusThree = zipWith (-) perfectSquares (cycle [3])
squaresBiggerThanFifty = filter (>50) perfectSquares

thirdPower numbers = [ n^3 | n <- numbers]

names = ["Bob", "Joe", "Sarah", "Bill", "Ted", "Carl", "Lisa", "Jordan"]

factorial 0 = 1
factorial n = n * factorial (n - 1)
