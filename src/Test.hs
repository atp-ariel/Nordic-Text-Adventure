import Functions
import Passages
import Test.Tasty (defaultMain, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)

main = defaultMain test

test = testGroup "================================\n||                            ||\n||  Loki Text Adventure Test  ||\n||                            ||\n================================" [findTests, symTests]

-- Find Operation test
findTests = testGroup "Find unit test" [emptyStringTest, emptyListTest, foundUpTest, foundUpCaseTest, foundUpOnUpperTest]

emptyStringTest = testCase "Find empty string on ['up', 'down', 'left', 'right']" $ assertEqual [] False (find "" ["up", "down", "left", "right"])
emptyListTest = testCase "Find string 'up' on []" $ assertEqual [] False (find "up" [])
foundUpTest = testCase "Find 'up' on ['up', 'down', 'left', 'right']" $ assertEqual [] True (find "up" ["up", "down", "left", "right"])
foundUpCaseTest = testCase "Find 'UP' on ['up', 'down', 'left', 'right']" $ assertEqual [] True (find "UP" ["up", "down", "left", "right"])
foundUpOnUpperTest = testCase "Find 'up' on ['upper', 'down', 'left', 'right']" $ assertEqual [] False (find "up" ["upper", "down", "left", "right"])

-- Synonyms test
symTests = testGroup "Synonyms unit test" [emptyPassageTest,roomSymTest]

emptyPassageTest = testCase "Passage with empty keywords" $ assertEqual [] [] (getSym inicialPassage) 
roomSymTest = testCase "Get synonyms of RoomPassages's keywords" $ assertEqual [] [["entrar", "ingresar", "pasar", "acceder", "adentrarse"],["casa", "residencia", "vivienda", "domicilio", "morada", "choza", "tienda"]] (getSym  (head (nextPossiblePassages inicialPassage)))
