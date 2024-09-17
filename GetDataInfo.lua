local _Load = loadstring
local _Print = print
local Data = _Load(game:HttpGet("https://raw.githubusercontent.com/sunnd4y/sunnd4y/main/InfoData.lua"))()

for Index, Value in pairs(Data) do 
   _Print(Index, Value)
end
