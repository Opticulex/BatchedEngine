dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP") 
dim bStrm: Set bStrm = createobject("Adodb.Stream") 
xHttp.Open "GET", "https://autohotkey.com/download/ahk-install.exe", False 
xHttp.Send 
 
with bStrm 
    .type = 1 '//binary 
    .open 
    .write xHttp.responseBody 
    .savetofile "C:\BatchedEngine\Resources\ahk-install.exe", 2 '//overwrite 
end with 
