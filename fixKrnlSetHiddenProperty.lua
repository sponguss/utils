getgenv().sethiddenproperty = function(obj, prop, value)
    setscriptable(obj, prop, true)
    obj[prop] = value
    setscriptable(obj, prop, false)
end
