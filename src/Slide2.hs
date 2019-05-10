module Slide2 where

normalFunction :: Int -> Int -> Int
normalFunction = (+)
























myMathFunction :: Num a => a -> a -> a
myMathFunction x y = x + y
























greet :: ToString x => x -> String
greet printable = "Hello " ++ toString printable

























class ToString a where
    toString :: a -> String

instance ToString String where
    toString s = s

























data MyEnum = Foo | Bar

instance ToString MyEnum where
    toString Foo = "Foo"
    toString Bar = "Bar"
























data MyEnum2 = Something | SomethingElse String
        deriving Show

printMyEnum :: MyEnum2 -> String
printMyEnum = show
