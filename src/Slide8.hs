{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE DataKinds #-}

module Slide8 where


import Servant
import Servant.Server (err500)
import Control.Monad.IO.Class (liftIO)
import Network.Wai (Application)
import Network.Wai.Handler.Warp (run)
import Data.Aeson (eitherDecode)
import Data.ByteString.Lazy.Char8 (pack)

import Slide7 (User)

filepath :: String
filepath = "./user.json"

type ReadFileAPI = "api" :> "read" :> Get '[JSON] [User]
























readFileHandler :: Server ReadFileAPI
readFileHandler = do
    contents <- liftIO $ readFile filepath
























    case eitherDecode (pack contents) of
        Left error -> throwError $ err500 { errBody = pack error }
        Right users -> pure users

























app :: Application
app = serve (Proxy :: Proxy ReadFileAPI) readFileHandler

main :: IO ()
main = putStrLn "Server running" *> run 8080 app
