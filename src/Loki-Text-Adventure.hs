import Control.Monad
import Data.List.Split
import Data.Char 
import Functions
import Passages
import GHC.IO.Encoding
import Distribution.System

isWindows :: Bool
isWindows = case buildOS of
    Windows -> True
    _       -> False

setEncoding :: IO()
setEncoding = do when (not isWindows) $ setLocaleEncoding utf8

main = do
    -- define the encoder depending on the operating system
    setEncoding
    -- obtain actual pasage
    passage <- obtainPassage
    -- print actual passage text
    putStrLn (text passage)
    -- unless passage is a final passage do
    unless (length (nextPossiblePassages passage)==0) $ do
        -- get user line
        sentence <- getLine
        -- unless user dicide to end game do
        unless ((map toLower sentence)=="salir") $ do
            putStrLn ""
            -- obtain next passage
            let auxPassage = next passage (endBy " " sentence) 
            -- if there is no progress kepp actual passage, else update passage
            if (pid auxPassage) == (pid passage) then do
                putStrLn "Acción inválida o irreconocible. Quizás faltan palabras o la acción no es esperada. Chequea también la ortografía de las palabras. No avance"
                main
            else do
                -- update passage
                changePassage auxPassage
                main