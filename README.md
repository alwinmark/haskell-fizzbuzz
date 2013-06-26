haskell-sample-fizzbuzz-project
===============================
Extended Code kata based on http://content.codersdojo.org/code-kata-catalogue/fizz-buzz/


## Tools

### TestFramework

src: http://batterseapower.github.io/test-framework/

### Cabal

Package management tool

### Quickcheck

Testing library

## Project Structure
```tree
.
├── dist
│   ├── build
│   │   ├── autogen
│   │   │   ├── cabal_macros.h
│   │   │   └── Paths_fizzbuzz.hs
│   │   ├── fizzbuzz
│   │   │   ├── fizzbuzz
│   │   │   └── fizzbuzz-tmp
│   │   │       ├── Fizzbuzz.hi
│   │   │       ├── Fizzbuzz.o
│   │   │       ├── Main.hi
│   │   │       └── Main.o
│   │   ├── Fizzbuzz
│   │   │   └── Fizzbuzz-tmp
│   │   │       ├── Fizzbuzz.hi
│   │   │       └── Fizzbuzz.o
│   │   └── tests
│   │       ├── tests
│   │       └── tests-tmp
│   │           ├── Fizzbuzz.hi
│   │           ├── Fizzbuzz.o
│   │           ├── FizzbuzzTest.hi
│   │           ├── FizzbuzzTest.o
│   │           ├── Main.hi
│   │           └── Main.o
│   ├── hpc
│   │   └── tix
│   │       └── tests
│   ├── package.conf.inplace
│   ├── setup-config
│   └── test
│       ├── fizzbuzz-0.1.0.0.log
│       └── fizzbuzz-0.1.0.0-tests.log
├── fizzbuzz.cabal
├── LICENSE
├── README.md
├── Setup.hs
├── src
│   ├── Fizzbuzz.hs
│   └── main.hs
├── test
    ├── all.hs
    └── FizzbuzzTest.hs
```


## Build and Run

To build and run use:
`cabal install && ./dist/build/fizzbuzz/fizzbuzz [Parameter]`

## Run Tests

To run the tests execute:
`cabal configure --enable-tests && cabal build && cabal test`

If you want to see a more detailed and highlighted output you can run the test executeable itself:
`cabal configure --enable-tests && cabal build && ./dist/build/tests/tests`


## Helpfull Reads

* http://www.haskell.org/haskellwiki/Tutorials/Programming_Haskell/Argument_handling
* https://en.wikipedia.org/wiki/Type\_inference
* http://www.haskell.org/tutorial/modules.html
* http://www.haskell.org/haskellwiki/How\_to\_write\_a\_Haskell\_program
* http://book.realworldhaskell.org/read/error-handling.html
* http://stackoverflow.com/questions/3030675/haskell-function-composition-and-function-application-idioms-correct-us
* http://book.realworldhaskell.org/read/testing-and-quality-assurance.html
* http://hackage.haskell.org/package/Decimal-0.2.2
