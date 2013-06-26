module Main where

import Test.Framework as TF (defaultMain, testGroup, Test)
import Test.Framework.Providers.QuickCheck2 (testProperty)
import Test.QuickCheck
import FizzbuzzTest

main :: IO()
main = defaultMain tests

tests :: [TF.Test]
tests = [
  testGroup "fizzbuzz" [
      testProperty "should return fizz for multiple of 3" should_return_fizz_for_multiple_of_3,
      testProperty "should return buzz for multiple of 5" should_return_buzz_for_multiple_of_5,
      testProperty "should return fizzbuzz for multiple of 15" should_return_fizzbuzz_for_multiple_of_15,
      testProperty "should return the number if its not divideable by 3 and 5" should_return_the_number_otherwise
    ]
  ]

