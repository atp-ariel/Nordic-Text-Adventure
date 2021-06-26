import Control.Monad
import Data.List.Split
import Data.Char 
import Functions
import Passages
import GHC.IO.Encoding
import Distribution.System

main = do
    -- define the encoder depending on the operating system
    setEncoding
    passage <- obtainPassage
    putStrLn (text passage)
    unless (length (nextPossiblePassages passage)==0) $ do
        sentence <- getLine
        unless ((map toLower sentence)=="salir") $ do
            putStrLn ""
            let auxPassage = next passage (endBy " " sentence) 
            if (pid auxPassage) == (pid passage) then do
                putStrLn "Acción inválida o irreconocible. Quizás faltan palabras o la acción no es esperada. Chequea también la ortografía de las palabras. No avance"
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