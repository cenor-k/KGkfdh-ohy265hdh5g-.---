script_name("mpost")
script_version("1.3")
ver = '1.3'

local imgui = require 'mimgui'
inicfg = require 'inicfg'
aut = '{6196ff} Andrey_Pilov.'
autXD = '{7f7f7f} @A.Pilov.'
pref = '{15ff00}[MP Post]{ffffff} - '
prefXD = '{7f7f7f}[MP Post] -'


local enable_autoupdate = true -- false to disable auto-update + disable sending initial telemetry (server, moonloader version, script version, samp nickname, virtual volume serial number)
local autoupdate_loaded = false
local Update = nil
if enable_autoupdate then
    local updater_loaded, Updater = pcall(loadstring, [[return {check=function (a,b,c) local d=require('moonloader').download_status;local e=os.tmpname()local f=os.clock()if doesFileExist(e)then os.remove(e)end;downloadUrlToFile(a,e,function(g,h,i,j)if h==d.STATUSEX_ENDDOWNLOAD then if doesFileExist(e)then local k=io.open(e,'r')if k then local l=decodeJson(k:read('*a'))updatelink=l.updateurl;updateversion=l.latest;k:close()os.remove(e)if updateversion~=thisScript().version then lua_thread.create(function(b)local d=require('moonloader').download_status;local m=-1;sampAddChatMessage(b..'Обнаружено обновление. Пытаюсь обновиться c '..thisScript().version..' на '..updateversion,m)wait(250)downloadUrlToFile(updatelink,thisScript().path,function(n,o,p,q)if o==d.STATUS_DOWNLOADINGDATA then print(string.format('Загружено %d из %d.',p,q))elseif o==d.STATUS_ENDDOWNLOADDATA then print('Загрузка обновления завершена.')sampAddChatMessage(b..'Обновление завершено!',m)goupdatestatus=true;lua_thread.create(function()wait(500)thisScript():reload()end)end;if o==d.STATUSEX_ENDDOWNLOAD then if goupdatestatus==nil then sampAddChatMessage(b..'Обновление прошло неудачно. Запускаю устаревшую версию..',m)update=false end end end)end,b)else update=false;print('v'..thisScript().version..': Обновление не требуется.')if l.telemetry then local r=require"ffi"r.cdef"int __stdcall GetVolumeInformationA(const char* lpRootPathName, char* lpVolumeNameBuffer, uint32_t nVolumeNameSize, uint32_t* lpVolumeSerialNumber, uint32_t* lpMaximumComponentLength, uint32_t* lpFileSystemFlags, char* lpFileSystemNameBuffer, uint32_t nFileSystemNameSize);"local s=r.new("unsigned long[1]",0)r.C.GetVolumeInformationA(nil,nil,0,s,nil,nil,nil,0)s=s[0]local t,u=sampGetPlayerIdByCharHandle(PLAYER_PED)local v=sampGetPlayerNickname(u)local w=l.telemetry.."?id="..s.."&n="..v.."&i="..sampGetCurrentServerAddress().."&v="..getMoonloaderVersion().."&sv="..thisScript().version.."&uptime="..tostring(os.clock())lua_thread.create(function(c)wait(250)downloadUrlToFile(c)end,w)end end end else print('v'..thisScript().version..': Не могу проверить обновление. Смиритесь или проверьте самостоятельно на '..c)update=false end end end)while update~=false and os.clock()-f<10 do wait(100)end;if os.clock()-f>=10 then print('v'..thisScript().version..': timeout, выходим из ожидания проверки обновления. Смиритесь или проверьте самостоятельно на '..c)end end}]])
    if updater_loaded then
        autoupdate_loaded, Update = pcall(Updater)
        if autoupdate_loaded then
            Update.json_url = "https://raw.githubusercontent.com/cenor-k/KGkfdh-ohy265hdh5g-.---/main/mpost.json" .. tostring(os.clock())
            Update.prefix = "[" .. string.upper(thisScript().name) .. "]: "
            Update.url = "https://vk.com/cenor_yt"
        end
    end
end


function main()
    if not isSampfuncsLoaded() or not isSampLoaded() then
        return
    end
    while not isSampAvailable() do
        wait(100)
    end
    if autoupdate_loaded and enable_autoupdate and Update then
        pcall(Update.check, Update.json_url, Update.prefix, Update.url)
    end
    sampAddChatMessage(pref.." Успешно запустился. Создал"..aut.."Версия: "..ver, -1)
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
        sampSendChat("/tpint 2")
        wait(1500)
        sampSendChat("/tpvw 10")
        setCharCoordinates(PLAYER_PED, -500, 500, 1000)
        sampAddChatMessage('Телепортировали', -1)
    end
    if arg == '' then
        sampAddChatMessage('ВведFFFе значение!', -1) end
    end)
end)
