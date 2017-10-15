import Data.Functor
import Control.Applicative

---- Functores
class Functor f where
  fmap :: (a -> b) -> f a -> f b
