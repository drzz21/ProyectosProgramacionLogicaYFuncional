import Data.Functor
import Control.Applicative

-- Functores aplicados
class Functor f => Applicative f where
     pure :: (a -> b) -> f (a -> b)