module Main where

fib x
  | x < 2 = 1
  | otherwise = fib (x - 1) + fib (x - 2)

{-Tail call optimized -- notice accumulator on prime function-}
{-Additionally, function exposed just takes a list, not an accumulator-}
{-Internals are handled by the local scope of the function-}
{-my_sum l = my_sum' l 0-}
  {-where-}
    {-my_sum' []     a = a-}
    {-my_sum' (x:xs) a = my_sum' xs (a+x)-}

{-Function type signature-}
my_sum :: Num a => [a] -> a

{-Function definition using pattern match-}
{-my_sum [] = 0-}
{-my_sum (x:xs) = x + my_sum xs-}

{-Function definition using gaurds-}
my_sum (x:xs)
  | null xs = x
  | otherwise = x + my_sum xs

sum_f :: Num a => [a] -> a
sum_f l = sum_f' l 0
  where
    sum_f' []     a = a
    sum_f' (x:xs) a = sum_f' xs (a+x)

main :: IO()
main = do
  print $ (\a b -> a + b) 5 2
  print $ fib 10
  print $ sum [1..400]
  print $ my_sum [1..400]
  print $ sum_f [1..400]
