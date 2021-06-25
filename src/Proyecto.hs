import Control.Monad
import Data.List.Split
import Functions
import Passages
import GHC.IO.Encoding

main = do
    setLocaleEncoding utf8
    passage <- obtainPassage
    putStrLn (text passage)
    unless (length (nextPossiblePassages passage)==0) $ do
    sentence <- getLine
    unless (sentence=="salir") $ do
    let auxPassage = next passage (endBy " " sentence) 
    updatePassage passage auxPassage
    main
    