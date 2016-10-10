module Main where

fib x
  | x < 2 = 1
  | otherwise = fib (x - 1) + fib (x - 2)

add a b = a + b

main :: IO()
main = do
  print $ fib 10
