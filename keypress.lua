local data=game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/hdeviscute/hdeviscute.github.io/main/KeyCodes.json"))
function keypress(key: string, useExploitFunction)
    useExploitFunction = useExploitFunction or false
    assert(type(useExploitFunction)=="boolean", "keypress: Expected boolean type at argument 2, got "..typeof(useExploitFunction))
    if useExploitFunction then
        if keypress and keyrelease and data[key] then
            keypress(data[key])
            task.wait(.01)
            keyrelease(data[key])
        end
    else
        game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode[key] or "",false,game)
		task.wait(.01)
		game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode[key] or "",false,game)
    end
end
return keypress
