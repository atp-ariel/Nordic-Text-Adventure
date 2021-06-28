# [Loki-Text-Adventure](https://github.com/ArielTriana/Nordic-Text-Adventure/)

A text adventure based on Nordic mythology. Final declarative programming test

## Compile and Run

There are two ways to compile and run the project:

- Using [**ghc**](https://www.haskell.org/ghc/) and the command line
- Using the [**Make** tool](https://www.gnu.org/software/make/)

### GHC & command line

Execute the following command on the command line to compile:

```
$ ghc Loki-Text-Adventure.hs -o "bin/Loki Text Adventure.exe" -odir bin -hidir bin
```

The result of this command is an .exe file in the `bin/` folder named LokiTextAdventure, which is the executable of the project.

To run the project enter the following command on the command line:

```
$ "./bin/Loki Text Adventure.exe"
```


### Make tool

To compile the project using the Make tool, enter the following command on the command line:

```
$ make compile
```

To run the project enter the following line:

```
$ make run
```
## Test project

You can test your project in two ways using GHC (or another Haskell compiler) or using the Make tool.

### Test with GHC

Run the following commands

```
$ ghc Test.hs -o test / Test.exe -odir test -hidir test
$ ./test/Test.exe
```

### Test with the Make tool

Run the following command in the console

```
$ make test
```

### Requirements

- [tasty 1.4.1](https://hackage.haskell.org/package/tasty)
- [tasty-hunit 0.10.0.3](https://hackage.haskell.org/package/tasty-hunit)

# Contributors

* [Ariel Alfonso Triana Pérez](https://github.com/ArielTriana)
* [Carlos Toledo Silva](https://github.com/cts-crypto)