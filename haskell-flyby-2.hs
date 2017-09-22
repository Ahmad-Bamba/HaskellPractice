import Data.List
import System.IO

addMe :: Int -> Int -> Int
addMe a b = a + b

main = do
    putStrLn "Name? "
    name <- getLine
    putStrLn ("Hello, " ++ name)
    putStrLn ( show (addMe 1 2) )
