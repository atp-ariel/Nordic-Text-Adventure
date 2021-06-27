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
    -- obtain actual pasage
    passage <- obtainPassage
    -- print actual passage text
    printStory (text passage)
    -- unless passage is a final passage do
    unless (length (nextPossiblePassages passage) == 0) $ do
        -- get user line
        sentence <- (putStr ">> " >> getLine)
        -- unless user dicide to end game do
        unless ((map toLower sentence) == "salir") $ do
            -- obtain next passage
            let auxPassage = next passage (endBy " " sentence) 
            -- if there is no progress keep actual passage, else update passage
            if (pid auxPassage) == (pid passage) then do
                printError "Acción inválida o irreconocible. Quizás faltan palabras o la acción no es esperada. Chequea también la ortografía de las palabras. No avance"
                main
            else do
                -- update passage
                changePassage auxPassage
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