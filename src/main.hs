module Main(main) where

import System.Environment
import System.IO.Error
import Control.Exception
import System.Exit
import Fizzbuzz

main = getArgs >>= run

run [x] = handle (catchException) (print . fizzbuzz . read $ x)
  where
    catchException :: SomeException -> IO()
    catchException _ = print ("Error wrong input. " ++ usage) >> exitWith (ExitFailure 1)
run _   = print usage

usage = "Usage: 'fizzbuzz [Number]'  where Number is a natural Number"
