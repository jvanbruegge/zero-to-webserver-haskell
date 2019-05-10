{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE DataKinds #-}

module Slide4 where

import GHC.TypeLits (Symbol, Nat)

data NormalDatatype a b = Something a b

























data DataOperator a b = a :<>: b
    deriving Show


data a :|: b = SomeConstructor a b

























data WithTag (tag :: Symbol) = Tagged

taggedValue :: WithTag "foo"
taggedValue = Tagged
























data JustAType -- No data constructors

data WithType t = Typed

typedValue :: WithType JustAType
typedValue = Typed
