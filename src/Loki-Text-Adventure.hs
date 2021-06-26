import Control.Monad
import Data.List.Split
import Data.Char 
import Functions
import Passages
import GHC.IO.Encoding

main = do
    setLocaleEncoding utf8
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
    
    