return function(str)
    local keyCodeTable=loadstring(game:HttpGet("https://raw.githubusercontent.com/sponguss/utils/main/stringToKeycode.lua"))()(str)
    for _, key in pairs(keyCodeTable) do
        game:GetService("VirtualInputManager"):SendKeyEvent(true,key,false,game)
        task.wait(.1)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,key,false,game)
    end
end
