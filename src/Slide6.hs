{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE DataKinds #-}

module Slide6 where


import Servant
import Network.Wai (Application)
import Network.Wai.Handler.Warp (run)

type EchoAPI = "api" :> "echo"
                :> ReqBody '[JSON] String
                :> Post '[PlainText] String

























echoHandler :: Server EchoAPI
echoHandler = pure

























app :: Application
app = serve (Proxy :: Proxy EchoAPI) echoHandler

main :: IO ()
main = putStrLn "Server running" *> run 8080 app
