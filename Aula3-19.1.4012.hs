module Aula_31914012 where


bools :: [Bool]
    bools [x] = [ x | x <- [1.. 5], x = False]

nums :: [[Int]]
    nums [[x]] = [ x | x <- xs,[ x | x <- xs, x = 0]]

add ::  Int->Int->Int->Int
    add a b c d
    add d= a + b + c

copy :: a -> (a,a)
    copy a = (a,a)

apply :: (a->b) -> a -> b
    apply (a->b)


swap :: (a,b)->(b,a)
    swar (a,b)=(b,a)