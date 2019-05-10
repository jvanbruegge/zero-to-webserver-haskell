module Slide1 where


someVariable :: Int
someVariable = 5

someString :: String
someString = "Hello"
























someFunction :: String -> String
someFunction name = someString ++ " " ++ name


























data MyCustomDataType = Constructor1 | Constructor2 String


handleCustomType :: MyCustomDataType -> String
handleCustomType Constructor1 = "No string to display"
handleCustomType (Constructor2 s) = s


























type MyAlias = MyCustomDataType

aliasFunction :: MyAlias -> String
aliasFunction = handleCustomType
