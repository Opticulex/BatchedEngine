# BatchedEngine

**Installing: Place All The files APART from BatchedEngine.bat into C:\BatchedEngine!! BatchedEngine.bat can be anywhere!**

One of my first big projects from quite a few years back for making Batch/AHK Files without any code. The system was designed to be modular and comes with a Command-Line UI with many features including an auto-installer, launch verification with access tokens, autoupdates, live debugger, a dynamic error reporter system, command line UI with enhancements, editor for creating/deleting/editing projects easily and efficiently, recovery system to recover crashed projects and some other stuff. Something like this could be done in C# or another language in about 1000-2000 lines of code but will probably require at least 15000 in Batch due to its inefficiency. Since uite a fair chunk of the code is several years old it is messy!

Since the code is hidden from the user, the user only sees entries for basic stuff such as text and coordinates, with descritions on what the function does and how to use it. Each individual snipped of code is called a 'function'.

The project was abandoned a long time ago but it is occasionally developed. The method of controlling projects, their contents and compiling is controlled by a language called BEVL. A full documentation on how the project system works can be found below.

## Projects

When you create a new project it creates the core files in `C:\BatchedEngine\Projects\[projectname]\data` which include the `config.bat` file which stores all the data about the project (Compatible BatchedEngine and BEVL versions, Date created and other data) and some various config files to set the state of the project (e.g. Just created, Closed, Opened, Editing, In-Progress etc). It also creates the `code` folder for storing all the actual project data and the `compile` folder for the finished product.

While in the editor you can add/edit/delete and search for various functions. You can add preset Batch/AHK or add in custom commands. All project data is controlled by BEVL. You can also compile the project into a running file.

## BEVL

BEVL (BatchedEngine Variable Language) comprises everything in a named, numbered and modular system storing all data inside of variables. The BEVL system is not efficient but is very easy to understand.

When the file is created it sets the total number of functions in the file to 0. Every time a function is added/deleted this number increases/decreases.

### Adding a function

When creating a function (in this case, a 'Click' command), the system will first check how many prior functions there are and set the current cound to +1 of that number (so if there were 10 existing functions it would set the next one to 11). This number will be called `[count]` in this documentation for ease-of understanding. You will then be promped to enter all the inf required for the command, in this case, the coordinates to Click (11,10 in this example). Once you enter them, it will compile your data.

It will create a directory within the projects `code` folder named `bevl_[funtion type][count]` (in this case, `bevl_Click11`). It then writes into this directory the file `bevl_data.bat`, which contains all the data for the funtion. This will include the function type, metadata and the data for the command, in this case, the coordinates of the Click. It will then make sure the total count of lines is properly updated.

### Deleting a function

To delete a function you must enter the full name of the function (e.g `bevl_Click11`). This can be found using the search feature. Once you enter in the name it then deletes the folder containing the data and reduces the total line count by 1.

### Editing a function

To edit a function you must enter the full name of the function (e.g `bevl_Click11`). This can be found using the search feature. Once you enter the name it will search for the function and read its metadata to determine what function type it is. It will then open up the UI for you to edit in and will save your changes.

### Searching for a function

The search feature allows you to search for a function by just its type. You are propmted to enter in a keyword, which should be the function type. It will then search for all functions with that type and display it like this, `[result number] - bevl_[funtion type][count] - [function data]`, so in our click example it would output `[1] - bevl_Click11 - 11,10`. At the bottom of the page after a search it displays the total amount of search results found.

### Compiling

When compiling a project, the system first does some validatoin to make sure BatchedEngine and BEVL versions are compatible and that the project contains at least some functions. It then checks for any plugins that exist and imports them if so. It then reads the total amount of lines and loops through it checking for each function type. If it finds one, it loads its config and data and writes to the compiled file with the reuquired data. Once all checks are complete it re-validates everything and writes an output log to see data on the compile. It then launches the compiled file.

The file is compiled to `C:\BatchedEngine\Projects\[projectname]\compile\[projectname].bat` and creates a subdirectory called `be_data` which stores all the plugin data/AHK commands and other required external assets.
