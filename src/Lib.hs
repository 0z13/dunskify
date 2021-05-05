{-# LANGUAGE OverloadedStrings #-}

module Lib
    ( getFileAndTransform 
    ) where
import System.IO 
import System.Environment
import Data.Text (Text)
import qualified Data.Text as T
import qualified Data.Text.IO as TIO
filename = "./geo.md"

transform :: [Text] -> Text
transform  = T.unlines . fmap (T.replace "oe" "ø" . T.replace "aa" "å" . T.replace "ae" "æ")

getFileAndTransform :: IO ()
getFileAndTransform = do
  --filename <- getArgs 
  file <- transform . T.lines <$> TIO.readFile filename 
  TIO.putStrLn file

