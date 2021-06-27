compile:
	ghc Loki-Text-Adventure.hs -o "bin/Loki Text Adventure.exe" -odir bin -hidir bin

run: compile
	"./bin/Loki Text Adventure.exe"

compile-test: 
	ghc Test.hs -o test/Test.exe -odir test -hidir test

test: compile-test
	test/Test.exe