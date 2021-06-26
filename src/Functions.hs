module Functions
(
    next,
    obtainPassage,
    updatePassage
) where

import Synonyms
import Passages
import Data.IORef
import Data.Char
import System.IO.Unsafe(unsafePerformIO)

-- Find a word in a list of words
find :: String -> [String] -> Bool
find word [] = False
find word (x:xs) | word == (map toLower x) = True
                 | otherwise = find word xs 

-- Identify keywords of a passage in a list of words
identifyKeywords :: Passage -> [String] -> Bool
identifyKeywords passage words = all (\x -> find x words) (keywords passage)    

-- Get the next passage 
next :: Passage -> [String] -> Passage
next passage words | length list == 0 = passage
                   | otherwise = list !! 0
                   where list = filter (\x -> identifyKeywords x words) (nextPossiblePassages passage)

actualPassage :: IORef Passage
actualPassage = unsafePerformIO(newIORef inicialPassage)
{-# NOINLINE actualPassage #-}

changePassage ::Passage->IO Passage
changePassage passage = atomicModifyIORef' actualPassage (\p->(passage,passage))

obtainPassage :: IO Passage
obtainPassage = readIORef actualPassage

updatePassage :: Passage -> Passage -> IO Passage
updatePassage actualP nextP | nextP == actualP = (changePassage actualP)
                            | otherwise = (changePassage nextP)

-- Return a list of all synonyms of passage's keywords
getSym :: Passage -> [[String]]
getSym passage = filter () (map (\x -> sym x) allSynonyms)