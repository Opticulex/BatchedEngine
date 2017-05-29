# BatchedEngine

**Installing: Place All The files APART from BatchedEngine.bat into C:\BatchedEngine!! BatchedEngine.bat can be anywhere!**

One of my first big projects from quite a few years back for making Batch Files without any code. The system was designed to be modular and comes with a Command-Line UI with many features including an auto-installer, launch verification with access tokens, autoupdates, live debugger, a dynamic error reporter system, command line UI with enhancements, editor for creating/deleting/editing projects easily and efficiently, recovery system to recover crashed projects and some other stuff. Something like this could be done in C# or another language in about 1000-2000 lines of code but will probably require at least 15000 in Batch due to its inefficiency.

The code is psychotically messy so you have been warned! If someone attempts to finish the code into a working version go ahead (you might even get a reward)!

The project was never nearly completed but the framework *around* the editor was made up. The editor was designed to use a BEVL (BatchedEngine Variable Language) system (which was made) and made each code snippet a variable in a systematically and modular system. The BEVL framework is too experimental an would cause serious damage if implemented directly ans it needs several dependances so it has been left out.

## BEVL (BatchedEngine Variable Language)

The BEVL system stores everything in variables with names and files corresponding to the code/type/input. While extremely inefficient it allows for a more secure approach. Example:

After creating a 10-iteration loop function that would echo "hello" and "test" in cmd, the following would be created (under the project file directory in C:\BatchedEngine\Projects\[projectname]\code\[etc etc], for this scenario the project will be called 'example') (All '001' would be '1' in the actual code):

**C:\BatchedEngine\Projects\exaple\code\bevl_code001_loop_001**

**C:\BatchedEngine\Projects\example\code\bevl_code001_loop_001\data.bat**

`set bevl_code001_loop_001_data_loops=10`

`set bevl_code001_loop_001_data_meta=Loop (10)`

`set bevl_code001_loop_001_data_search=loop`

**C:\BatchedEngine\Projects\example\code\bevl_code001_loop_001\code.bat**

`set bevl_code001_loop_001_code001=echo hello`

`set bevl_code001_loop_001_code002=echo test`

You can probably see the pattern. Now to analyse the way the variables are made:

**set bevl_code001_loop_001_code001**

`bevl` - Defines it as a BEVL command to stop confusion with other command types

`code001` - Specifies what overall code insert it is (e.g. Loop, Echo, Set a Variable etc)

`loop` - Specifies the type of the cfunction (loop in this case)

`code001` - Specifies what line of code for the functions commmand it is

This specific command can vary greatly and have other subcommands (e.g. data_meta)

Note: In BatchedEngine there was a 10-20 limit on how many of each function could be made imposed until a more open system could be coded.

This seems complicated but makes it easy for the program to read the code and search for it with the inbuilt search function.  It relies heavily of `if` commands to determine the code.

The folowing would be an example of real code if a user searched for the above loop command using the search function (this is just experimental and hasnt been tested). This is used as the user has to edit specific functions by going to thier reference name (e.g bevl_code001_loop_001). Ading in a search massively helps people find their functions:

`:search`

`set srchloop=0`

`set srchresults=0`

`echo Search for %search% returned the following:`

`echo.`

`:searchloop`

`set /a srchloop+=1`

`if "%srchloop%"=="10" got search_done`

`if file exists C:\BatchedEngine\Projects\example\code\bevl_code%srchloop%_%search%1 (`

`set snippet=bevl_code%srchloop%_%search%1`

`echo %srchloop% - bevl_code%srchloop%_%search%1`

`set /a srchresults+=1`

`)`

`if file exists C:\BatchedEngine\Projects\example\code\bevl_code%srchloop%_%search%2 (`

`set snippet=bevl_code%srchloop%_%search%2`

`echo %srchloop% - bevl_code%srchloop%_%search%2`

`set /a srchresults+=1`

`)`

`[until bevl_code%srchloop%_loop10 of course]`

`goto searchloop`

`:search_done`

`echo.`

`echo The search returned %srchresults% results.`


The above code would return the following:

`Search for loop returned the following:`

``

`1 - bevl_code1_loop1`

``

`The search returned 1 results.`

That is the basic principal of how the system would work. Users would have to manually enter in the `bevl_code1_loop1` and the system woul read its meta and settings files and would then know how to deal with it and what editing options to display to the user.

The compile system would use a catalouge of all these functions (complex, lets not get into that) that would find out every function that existed and what order it was in and based of the entries for that, it would write the file. for out abve loop it would compile to this (would be called woth `call :loop1`):

`:loop1`

`set loop1=0`

`:loop1loop`

`set /a loop1+=1`

`if %loop1% == 10 GOTO:eof`

`echo hello`

`echo test`

`goto loop1loop`


While this system was never finished it was deeply coded and set up. I may finish this project for fun in several years or whenever I can be bothered to waste my time on this dying language. I hope this might give instpiration to someone on how to coe their own system or whatever. (P.S I'm genuinely fucking tired of this project just laying around in my text editors, its meaningless and serves very litte use as well, the only possibly useful thing would be the BEVL system)
