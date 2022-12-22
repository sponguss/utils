return function(str)
    local KeyCodes={}
    local Reference={
        [""]="Unknown",
        [" "]="Space",
        ["\""]="QuotedDouble",
        ["#"]="Hash",
        ["$"]="Dollar",
        ["%"]="Percent",
        ["&"]="Ampersand",
        ["'"]="Quote",
        ["("]="LeftParenthesis",
        [")"]="RightParenthesis",
        ["*"]="Asterisk",
        ["+"]="Plus",
        [","]="Comma",
        ["-"]="Minus",
        ["."]="Period",
        ["/"]="Slash",
        Zero="0",
        One="1",
        Two="2",
        Three="3",
        Four="4",
        Five="5",
        Six="6",
        Seven="7",
        Eight="8",
        Nine="9",
        Colon=":",
        Semicolon=";",
        LessThan="<",
        GreaterThan=">",
        ["="]="Equals",
        ["?"]="Question",
        ["@"]="At",
        LeftBracket="[",
        BackSlash="\\",
        RightBracket="]",
        Caret="^",
        Underscore="_",
        Backquote="`",
        LeftCurly="{",
        Pipe="|",
        RightCurly="}",
        Tilde="~",
    }
    for _, key in pairs(str:split("")) do
        for i, r in pairs(Reference) do
            if i==key then table.insert(KeyCodes, Enum.KeyCode[r]) end
            if r==key then table.insert(KeyCodes, Enum.KeyCode[i]) end
        end
        if Enum.KeyCode[string.upper(key)] then
            if key==string.upper(key) then
                table.insert(KeyCodes, Enum.KeyCode.CapsLock)
                table.insert(KeyCodes, Enum.KeyCode[key])
                table.insert(KeyCodes, Enum.KeyCode.CapsLock)
            else table.insert(KeyCodes, Enum.KeyCode[key:upper()])  end
        end
    end
    return KeyCodes
end
