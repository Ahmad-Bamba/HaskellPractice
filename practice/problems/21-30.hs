import System.Random (randomRIO)
import Data.Array.MArray

-- https://wiki.haskell.org/99_questions/21_to_30

-- 21

insert_at :: a -> [a] -> Int -> [a]
insert_at to_add list at = fst (splitAt at list) ++ [to_add] ++ snd (splitAt at list)

-- 22

range :: (Integral a) => a -> a -> [a]
range start end
    | end > start = [start..end]
    | otherwise = [start,start - 1..end]

-- 23

-- TODO figure out magic
rnd_select :: [a] -> Int -> IO [a]
rnd_select xs n = [xs !! x | x <- gen_indexes n cap] where
    cap = (length xs) - 1
    gen_indexes n c = sequence $ replicate n $ randomRIO (1,c::Int)
