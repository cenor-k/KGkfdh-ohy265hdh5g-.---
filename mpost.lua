script_name("post")
script_version("1.2")

local imgui = require 'mimgui'
inicfg = require 'inicfg'
aut = '{6196ff} Andrey_Pilov.'
autXD = '{7f7f7f} @A.Pilov.'
pref = '{15ff00}[MP Post]{ffffff} - '
prefXD = '{7f7f7f}[MP Post] -'

function main()
    sampAddChatMessage(pref.." Успешно запустился. Создал"..aut, -1)
    sampAddChatMessage(prefXD.." {c2c2c2}P.S Мозги ебите ему! "..autXD, -1)
    sampRegisterChatCommand('cmd', function() WinState[0] = not WinState[0] end)
    wait(-1)
end

sampRegisterChatCommand("mpost", function(arg)
    lua_thread.create(function()
    if arg == '1' then
        sampSendChat("/tpint 5")
        wait(1500)
        sampSendChat("/tpvw 10")
        setCharCoordinates(PLAYER_PED, 1727, 1659, 307)
        sampAddChatMessage('Телепортировали', -1)
    end
    if arg == '2' then
        sampSendChat("/tpint 5")
        wait(1500)
        sampSendChat("/tpvw 10")
        setCharCoordinates(PLAYER_PED, 19.2, 33.2, 1005.8)
        sampAddChatMessage('Телепортировали', -1)
    end
    if arg == '3' then
        sampSendChat("/tpint 1")
        wait(1500)
        sampSendChat("/tpvw 10")
        setCharCoordinates(PLAYER_PED, -779.12, 527.80, 1375.65)
        sampAddChatMessage('Телепортировали', -1)
    end
    if arg == '4' then
        sampSendChat("/tpint 5")
        wait(1500)
        sampSendChat("/tpvw 10")
        setCharCoordinates(PLAYER_PED, 14.2405, -2.4521, 1001.1397)
        sampAddChatMessage('Телепортировали', -1)
    end
    if arg == '5' then
        sampSendChat("/tpint 14")
        wait(1500)
        sampSendChat("/tpvw 10")
        setCharCoordinates(PLAYER_PED, 229.9512, -990.7686, 1034.0994)
        sampAddChatMessage('Телепортировали', -1)
    end
    if arg == '6' then
        sampSendChat("/tpint 14")
        wait(1500)
        sampSendChat("/tpvw 10")
        setCharCoordinates(PLAYER_PED, 684.7390, 980.8650, 1101.5149)
        sampAddChatMessage('Телепортировали', -1)
    end
    if arg == '7' then
        sampSendChat("/tpint 5")
        wait(1500)
        sampSendChat("/tpvw 10")
        setCharCoordinates(PLAYER_PED, 20.7513, -1.5963, 1001.1429)
        sampAddChatMessage('Телепортировали', -1)
    end
    if arg == '8' then
        sampSendChat("/tpint 3")
        wait(1500)
        sampSendChat("/tpvw 10")
        setCharCoordinates(PLAYER_PED, -511.8485,98.7242,1093.3359)
        sampAddChatMessage('Телепортировали', -1)
    end
    if arg == '9' then
        sampSendChat("/tpint 1")
        wait(1500)
        sampSendChat("/tpvw 10")
        setCharCoordinates(PLAYER_PED, -500, 500, 945)
        sampAddChatMessage('Телепортировали', -1)
    end
    if arg == '' then
        sampAddChatMessage('Введите значение!', -1) end
    end)
end)
