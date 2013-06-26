module Fizzbuzz(fizzbuzz) where
-- I commented the types (signature) of the functions. Haskell automatically find the most generall.
-- you can find more infos about Haskell here: http://yannesposito.com/Scratch/en/blog/Haskell-the-Hard-Way/

-- fizzbuzz :: (Integral a, Show a) => a -> [Char]
fizzbuzz x
  | x `mod` 15 == 0 = "fizzbuzz"
  | x `mod` 5 == 0 = "buzz"
  | x `mod` 3 == 0 = "fizz"
  | otherwise = show x
