python "..\python\notSoRand.py"
call GettingVariableFromFile.bat result.txt
md testIt\"%result.txt%"
timeout 5
CreateRandomFolderHere.bat