import Control.Monad
import Data.List.Split
import Data.Char 
import Functions
import Passages
import GHC.IO.Encoding
import Distribution.System
import System.IO

main = do
    -- define the encoder depending on the operating system
    setEncoding
    hSetBuffering stdout NoBuffering
    passage <- obtainPassage
    printStory (text passage)
    unless (length (nextPossiblePassages passage)==0) $ do
        sentence <- (putStr ">> " >> getLine)
        unless ((map toLower sentence)=="salir") $ do
            let auxPassage = next passage (endBy " " sentence) 
            if (pid auxPassage) == (pid passage) then do
                printError "Acción inválida o irreconocible. Quizás faltan palabras o la acción no es esperada. Chequea también la ortografía de las palabras. No avance"
                main
            else do
                updatePassage passage auxPassage
                main
    
isWindows :: Bool
isWindows = case buildOS of
    Windows -> True
    _       -> False

setEncoding :: IO()
setEncoding = do when (not isWindows) $ setLocaleEncoding utf8

printStory :: String -> IO()
printStory text = putStrLn $ "\x1b[32m" ++ text ++ "\x1b[0m"

printError :: String -> IO()
printError text = putStrLn $ "\x1b[31m" ++ text ++ "\x1b[0m"