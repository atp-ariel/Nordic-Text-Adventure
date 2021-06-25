module Functions
(
    next,
    obtainPassage,
    updatePassage
) where

import Passages
import Data.IORef
import System.IO.Unsafe(unsafePerformIO)

find :: String->[String]->Bool
find word [] = False
find word (x:xs) | word == x = True
                 | otherwise = find word xs 

identifyKeywords :: Passage->[String]->Bool
identifyKeywords passage words = all (\x -> find x words) (keywords passage)    

next::Passage->[String]->Passage
next passage words | length list == 0 = passage
                   | otherwise = list !! 0
                   where list = filter (\x -> identifyKeywords x words) (nextPossiblePassages passage)

actualPassage::IORef Passage
actualPassage = unsafePerformIO(newIORef inicialPassage)
{-# NOINLINE actualPassage #-}

changePassage ::Passage->IO Passage
changePassage passage = atomicModifyIORef' actualPassage (\p->(passage,passage))

obtainPassage :: IO Passage
obtainPassage = readIORef actualPassage

updatePassage :: Passage -> Passage -> IO Passage
updatePassage actualP nextP | nextP == actualP = (changePassage actualP)
                            | otherwise = (changePassage nextP)