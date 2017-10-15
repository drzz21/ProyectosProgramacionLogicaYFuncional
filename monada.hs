---- Monadas
newtype Sum n = Sum n
instance Num n => Monoid (Sum n) where
  mempty = Sum 0
  mappend (Sum x) (Sum y) = Sum (x + y)
