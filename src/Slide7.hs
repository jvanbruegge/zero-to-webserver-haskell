{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}

module Slide7 where


import Servant
import Network.Wai (Application)
import Network.Wai.Handler.Warp (run)
import Data.Aeson (FromJSON(..), ToJSON(..))
import GHC.Generics (Generic)

data User = User
        { name :: String
        , age :: Int
        , numChildren :: Int
        }
    deriving (Generic, ToJSON, FromJSON)

























type UserAPI = "api" :> "echo"
                :> ReqBody '[JSON] String
                :> Post '[JSON] User

userHandler :: Server UserAPI
userHandler name = pure $ User name 34 2
























app :: Application
app = serve (Proxy :: Proxy UserAPI) userHandler

main :: IO ()
main = putStrLn "Server running" *> run 8080 app
