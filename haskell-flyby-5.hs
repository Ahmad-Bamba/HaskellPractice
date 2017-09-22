import Data.List
import System.IO

data Employee = Employee { name :: String, position :: String, idNum :: Int } deriving (Eq, Show)

bob = Employee { name = "Bob Jones", position = "Manager", idNum = 17381 }
jen = Employee { name = "Jennifer Elizabeth", position = "Vice Director of Sales", idNum = 85011 }
