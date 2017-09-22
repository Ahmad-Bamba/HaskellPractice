import Data.List
import System.IO

-- Enums
data BasebalPlayer = Pitcher
                    | Catcher
                    | Infielder
                    | Outfield
                deriving (Show)


barryBonds :: BasebalPlayer -> Bool
barryBonds Outfield = True
barryBonds _ = False
barryInOF = print(barryBonds Outfield)

-- Structs?
data Customer = Customer String String Double
    deriving (Show)

guy :: Customer
guy = Customer "Ahmad Bamba" "3844 Highland Oaks Dr." 69.69

getBalance :: Customer -> String
getBalance (Customer _ _ b) = "$" ++ show(b)

-- Rock Paper Scissors!
data RPS = Rock | Paper | Scissors
    deriving (Show)

shoot :: RPS -> RPS -> String
shoot Paper Rock = "Paper beats Rock"
shoot Rock Scissors = "Rock beats Scissors"
shoot Scissors Paper = "Scissors beats Paper"
shoot Scissors Rock = "Scissors loses to Rock"
shoot _ _ = "This is just a demonstration stop testin me!"

-- Polymorphism? (by composition)
data Shape = Circle Float Float Float
             | Rectangle Float Float Float Float
        deriving (Show)

area (Circle _ _ r) = pi * r^2
area (Rectangle x y x2 y2) = (abs (x2 -x)) * (abs (y2 - y))

myCircle = Circle 0 0 10
myRectangle = Rectangle 5 5 0 10
