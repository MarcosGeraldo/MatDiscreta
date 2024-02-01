

data Bit = O | I deriving Show

bin2int :: [Bit] -> Int
    bin2int a = sum (foldr binTrans 0 a)
    where  
        weights = iterate (*2)1

binTrans :: Bit->Int->Int
    binTrans b n = |b==O = 0
                   |otherwise = n

--Não consegui imaginar uma meneira de mantendo a estrutura de variaveis do foldr passar os valores dos expoentes 2 para utilizar no calculo


