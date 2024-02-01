perfeito :: Int -> [Int]
    perfeito valor = [ x | x <- [1 .. valor-1], ((mod valor x) == 0)]

testa_perfeito :: Int->Bool
testa_perfeito test
    |((sum(perfeito test)) == test) = True
    | otherwise = False

junta_valores :: Int -> [Int]
junta_valores valores = [x | x <- [1 .. valores], ((testa_perfeito x) == True)]

verifica_primo :: Int -> [Int]
verifica_primo pri = [x|x<-[1 .. primo],primes x]

max_3 :: Int -> Int -> Int -> Int
max_3 a b c= |a<b && b<c = c
             |otherwise max_3 b c a
            
norma :: Int-> Int -> Int
norma x y = sqrt (x^2+y^2)

testa_lista :: [Int] -> Bool
testa_lista [x]=retorno
    where = [x | x [xs],xs!= [] && verificador>2=True]
    verificador = verificador+1

testa_lista_le :: [Int] -> Bool
testa_lista_le [x]= |lenght x > 2= True
                    |otherwise = False
                    
