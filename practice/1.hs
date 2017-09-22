-- Double the math, double the fall
doMathTwice :: (Num a) => (a -> a) -> a -> a
doMathTwice f x = f (f x)

{- I think how this works is that this whole thing turns into
    f ( f ( f ( f ( f(x) ) ) ) )
    more and more fs will be added to the chain until doMathNth f x 1 is called,
    which is just defined as the inner f x
-}
doMathNth :: (Num a, Num b, Ord b) => (a -> a) -> a -> b -> a
-- Edge cases
doMathNth _ _ 0 = error "Must do the math thing at least one time"
doMathNth f x 1 = f x
-- Scary recursion pls halp
doMathNth f x n =  f (doMathNth f x (n - 1))

-- Standard Haskell quicksort implimentation
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort (filter (<=x) xs)
        biggerSorted = quicksort (filter (>x) xs)
    in smallerSorted ++ [x] ++ biggerSorted
