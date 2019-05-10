{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE DataKinds #-}

module Slide5 where

import Servant
import Network.Wai (Application)
import Network.Wai.Handler.Warp (run)


type HelloAPI = "api" :> "hello" :> Get '[PlainText] String

























helloHandler :: Server HelloAPI
helloHandler = pure "Hello uncodeference!"

























app :: Application
app = serve (Proxy :: Proxy HelloAPI) helloHandler

main :: IO ()
main = putStrLn "Server running" *> run 8080 app
