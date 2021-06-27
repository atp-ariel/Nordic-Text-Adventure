module Functions
(
    next,
    obtainPassage,
    changePassage
) where

import Synonyms
import Passages
import Data.IORef
import Data.Char
import System.IO.Unsafe(unsafePerformIO)

-- Find a word in a list of words
find :: String -> [String] -> Bool
find word [] = False
find word (x:xs) | (map toLower word) == (map toLower x) = True
                 | otherwise = find word xs 

-- Identify keywords of a passage in a list of words
identifyKeywords :: Passage -> [String] -> Bool
identifyKeywords passage words = all (\x -> (any (\y -> find y words) x)) (getSym passage)    

-- Get the next passage 
next :: Passage -> [String] -> Passage
next passage words | length list == 0 = passage
                   | otherwise = list !! 0
                   where list = filter (\x -> identifyKeywords x words) (nextPossiblePassages passage)

-- Define actual passage as inicialPassage at start
actualPassage :: IORef Passage
actualPassage = unsafePerformIO(newIORef inicialPassage)
{-# NOINLINE actualPassage #-}

-- Change actual passage
changePassage :: Passage->IO Passage
changePassage passage = atomicModifyIORef' actualPassage (\p->(passage,passage))

-- Obtain actual passage
obtainPassage :: IO Passage
obtainPassage = readIORef actualPassage

-- Return a list of all synonyms of passage's keywords
getSym :: Passage -> [[String]]
getSym passage = filter (\y -> find (head y) (keywords passage)) (map (\x -> sym x) allSynonyms)