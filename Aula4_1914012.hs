module Aula4_1914012 where

minList :: Int -> [Int] -> Int
    minList y [x] -> z
        | [xs]==[] = y
        | y < [x |xs] = minList y [xs] 
        |otherwise y=[x |xs], minList y [x]
andList :: [Bool] -> Bool
    andList [x] -> z
    | xs == [] = True
    | False == [x |xs] = False 
    | otherwise andList [xs]

orList :: [Bool] -> Bool
    orList [x] -> z
        where
            y = [x|xs]
            | xs == [] = True
            | y == [x | xs] = False 
            | otherwise andList [xs]

indexOf :: Int -> [Int] -> Int
    indexOf x [z] -> w
        |x == [z | zs] = length zs
        |otherwise indexOf x zs

