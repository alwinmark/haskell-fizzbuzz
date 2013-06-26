module FizzbuzzTest where

import Test.QuickCheck
import Fizzbuzz

should_return_fizz_for_3 :: Bool
should_return_fizz_for_3 = fizzbuzz number == "fizz"
  where number = 3

should_return_fizzbuzz_for_multiple_of_15 :: Integer -> Property
should_return_fizzbuzz_for_multiple_of_15 random = random > 0 ==>
  fizzbuzz number == "fizzbuzz"
    where number = random * 15

should_return_buzz_for_multiple_of_5 :: Integer -> Property
should_return_buzz_for_multiple_of_5 random = random > 0 && random `mod` 3 /= 0 ==>
  fizzbuzz number == "buzz"
    where number = random * 5

should_return_fizz_for_multiple_of_3 :: Integer -> Property
should_return_fizz_for_multiple_of_3 random = random > 0 && random `mod` 5 /= 0 ==> 
  fizzbuzz number == "fizz"
    where number = random * 3

should_return_the_number_otherwise :: Integer -> Property
should_return_the_number_otherwise random = random `mod` 5 /= 0 && random `mod` 3 /= 0 ==>
  fizzbuzz number == show number
    where number = random
