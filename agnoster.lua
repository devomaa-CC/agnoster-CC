local color = "a"
function _G.string.startsWith(s, start)
    if start then
        return string.sub(s, 1,#start) == start
    else
        return string.sub(s, 1,1)
    end
end
function _G.string.split(s)
    local words = {}

    for word in s:gmatch("%w+") do
        table.insert(words, word)
    end
    return words
end
function _G.shell.exit()

end
while true do
    local otherthing = "/" .. shell.dir()
    local thing = string.rep("f", #otherthing)
    local thing2 = string.gsub(thing, "f", color)
    term.blit(otherthing .. "  \157", thing .. "ff"..color, thing2 .. color..color.."f")
    write(" ")
    local input = read()
    shell.run(input)
end

