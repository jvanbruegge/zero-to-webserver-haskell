module Slide3 where


data ParameterizedDatatype a b = First a | Second b | Third String
    deriving Show

























data Option a = Some a | None
    deriving Show

fromOption :: a -> Option a -> a
fromOption x None = x
fromOption _ (Some v) = v
























a <?> b = fromOption b a
