module Aula6 where

    data Shape = Shape Float Float 

calcula :: Shape -> Float 
      calcula Shape(x y) = x * y

    data IntTree = ILeaf | INode Int IntTree IntTree 

contaarvoref :: IntTree -> Int -> Int
    contaarvoref _ ILeaf x = x+1
    contaarvoref no(Inode x y z)
    contaarvoref = contaarvoref y 
    contaarvoref = contaarvoref z
    contaarvoref = x

{-contaarvoren :: IntTree -> Int -> Int
    contaarvoref ILeaf x = x+1
    contaarvoref no(Inode x y z)
    contaarvoref = contaarvoref y 
    contaarvoref = contaarvoref z
    contaarvoref = x-}

    data IntList = INil | ICons Int IntList

listtotree :: IntList -> IntTree
    listtotree INil = x
    |
    |

