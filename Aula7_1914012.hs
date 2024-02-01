module Aula7_1914012 where

map :: (a->b) -> [a] ->[b]
    map _ []=[]
    map f (x :xs) = [x | x <- xs, f x]

evenList :: [Int] -> [Bool]
    evenList [x :xs]= [ x | x <- xs, mod x == 0]

filter :: ( a->Bool ) -> [a] -> [a]
    filter_ []=[]
    filter p (x : xs)=[x | x <- xs, |p x = x]

selecInt :: [a]-> x -> y ->[z]
    selecInt [] _ _=[]
    selecInt [a : as] x y = |a>x && a<y = a : selecInt as
                            |otherwise selecInt as

sumQuadImp :: [Int] -> ([Int] -> [Int]) -> ([Int] -> [Int]) -> ([Int] -> Int) -> Int
    sumQuadImp [] _ _ _= []
    sumQuadImp [x:xs]= buscaImp [x:xs].elevaQuad [x:xs].somaElementos [x:xs]


buscaImp :: [Int]->[Int]
    buscaImp[]=[]
    buscaImp [x |xs]= |(x mod 2) == 0, buscaImp xs
                      |otherwise = x : buscaImp xs

somaElementos :: [Int]->Int
    somaElementos[]=[]
    somaElementos [x:xs]= x + somaElementos xs

elevaQuad :: [Int]->[Int]
    elevaQuad []=[]
    elevaQuad [x:xs]= x^2:elevaQuad xs