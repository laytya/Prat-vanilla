--[[
Name: Prat_PlayerNames
Revision: $Revision: 16689 $
Author(s): Curney (asml8ed@gmail.com)
           Krtek (krtek4@gmail.com)
Inspired by: idChat2_PlayerNames by Industrial
Website: http://www.wowace.com/files/index.php?path=Prat/
Documentation: http://www.wowace.com/wiki/Prat/Integrated_Modules#PlayerNames
SVN: http://svn.wowace.com/wowace/trunk/Prat/
Description: Module for Prat that adds player name options.
Dependencies: Prat
]]

local L = AceLibrary("AceLocale-2.2"):new("PratPlayerNames")

L:RegisterTranslations("enUS", function() return {
    ["PlayerNames"] = true,
    ["Player name formating options."] = true,
    ["Brackets"] = true,
    ["Square"] = true,
    ["Angled"] = true,
    ["None"] = true,
    ["Class"] = true,
    ["Random"] = true,
    ["Sets style of brackets to use around player names."] = true,
    ["Use common color"] = true,
    ["Toggle useing common color for unknown player names."] = true,
    ["Set common color"] = true,
    ["Change the common color of PlayerNames"] = true,
    ["Use TabComplete"] = true,
    ["Toggle tab completion of player names."] = true,
	["Show Level"] = true,
    ["Toggle level showing."] = true,
	["Show Group"] = true,
    ["Toggle raid group showing."] = true,
    ["Keep Info"] = true,
    ["Keep player information between session."] = true,
    ["Color Mode"] = true,
    ["How to color Players name."] = true,
    ["Toggle"] = true,
    ["Toggle the module on and off."] = true,
	["Use Census+"] = true,
    ["Use Census+ database"] = true,
	["Mark self"] = true,
    ["Toggle color marking of your nikname in chat."] = true,
	["Set mark color"] = true,
    ["Change the mark color of your nikname"] = true,
	["Group acronim"] = true,
    ["Simbol of raid group added to group number"] = true ,
	["Enable group number at %s"] = true,
} end)

L:RegisterTranslations("ruRU", function() return {
    ["PlayerNames"] = "PlayerNames",
    ["Player name formating options."] = "Настройки форматирования имени собеседника.",
    ["Brackets"] = "Скобки",
    ["Square"] = "Квадратные",
    ["Angled"] = "Треугольные",
    ["None"] = "Нет",
    ["Class"] = "Класс",
    ["Random"] = "Случайно",
    ["Sets style of brackets to use around player names."] = "Установить стиль скобок вокруг имени собеседника.",
    ["Use common color"] = "Использовать общий цвет",
    ["Toggle useing common color for unknown player names."] = "Вкл/Выкл использование общего цвета для неизвестных имен игроков.",
    ["Set common color"] = "Установить общий цвет",
    ["Change the common color of PlayerNames"] = "Изменить общий цвет имен игроков",
    ["Use TabComplete"] = "Использовать TabComplete",
    ["Toggle tab completion of player names."] = "Вкл/Выкл TabComplete в именах игроков.",
	["Show Level"] = "Показывать уровень",
    ["Toggle level showing."] = "Вкл/выкл отображения уровня собеседника.",
	["Show Group"] = "Показывать группу",
    ["Toggle raid group showing."] = "Вкл/выкл отображения рейдовой группы.",
    ["Keep Info"] = "Хранить информацию",
    ["Keep player information between session."] = "Хранить информацию о игроках между сессиями.",
    ["Color Mode"] = "Режим цвета",
    ["How to color Players name."] = "Как окрасить имя игрока.",
    ["Toggle"] = "Вкл/Выкл",
    ["Toggle the module on and off."] = "Вкл/Выкл модуль",
    ["Use Census+"] = "Использовать Census+",
    ["Use Census+ database"] = "Использовать базу данных Census+",
} end)

L:RegisterTranslations("zhCN", function() return {
	["PlayerNames"] = "玩家姓名",
	["Player name formating options."] = "玩家姓名格式选项。",
	["Brackets"] = "圆弧",
	["Square"] = "方形",
	["Angled"] = "折角",
	["None"] = "无",
    ["Class"] = "职业",
    ["Random"] = "随机",
	["Sets style of brackets to use around player names."] = "设置玩家名字的括号。",
	["Use TabComplete"] = "标签",
	["Toggle tab completion of player names."] = "为玩家姓名作标签。",
	["Show Level"] = "显示等级",
	["Toggle level showing."] = "人物等级显示。",
	["Show Group"] = "显示小组",
	["Toggle raid group showing."] = "团队小组显示。",
	["Keep Info"] = "持续",
	["Keep player information between session."] = "在进程间保持信息。",
	["Color Mode"] = "颜色模块",
	["How to color Players name."] = "玩家名字颜色。",
	["Toggle"] = "切换",
	["Toggle the module on and off."] = "切换此模块的打开与关闭。",
} end)

L:RegisterTranslations("koKR", function() return {
    ["PlayerNames"] = "플레이어명",
    ["Player name formating options."] = "플레이어명 형식을 설정합니다.",
    ["Brackets"] = "괄호",
    ["Square"] = "사각형",
    ["Angled"] = "각진형",
    ["None"] = "없음",
    ["Class"] = "직업",
    ["Random"] = "무작위",
    ["Sets style of brackets to use around player names."] = "플레이어명 주위 괄호의 스타일 설정",
    ["Use common color"] = "공통 색상 사용",
    ["Toggle useing common color for unknown player names."] = "알려지지 않은 플레이어명에 대한 공통 색상 사용을 전환합니다.",
    ["Set common color"] = "공통 색상 설정",
    ["Change the common color of PlayerNames"] = "플레이어명의 공통 색상을 설정합니다.",
    ["Use TabComplete"] = "탭완성 사용",
    ["Toggle tab completion of player names."] = "플레이어명의 탭 완성기능을 전환합니다.",
    ["Show Level"] = "레벨 표시",
    ["Toggle level showing."] = "레벨 표시를 전환합니다.",
    ["Show Group"] = "파티 표시",
    ["Toggle raid group showing."] = "공격대 파티 표시를 전환합니다.",
    ["Keep Info"] = "정보 유지",
    ["Keep player information between session."] = "연결 간 플레이어 정보를 유지합니다.",
    ["Color Mode"] = "색상 모드",
    ["How to color Players name."] = "플레이어명 색상을 변경합니다.",
    ["Toggle"] = "전환",
    ["Toggle the module on and off."] = "모듈 켜고 끄기를 전환합니다.",
} end)

local BC = AceLibrary("Babble-Class-2.2")
local sfind, sformat, slower, sgsub = string.find, string.format , string.lower, string.gsub

Prat_PlayerNames = Prat:NewModule("playernames")

Prat_PlayerNames.Classes = {}
Prat_PlayerNames.Levels = {}
Prat_PlayerNames.Subgroups = {}

local chatList = {[1] = {t = "SAY", n = "Say"}, 
				  [4] = {t = "GUILD", n = "Guild"},
				  [2] = {t = "PARTY", n = "Party"},
				  [3] = {t = "RAID", n = "Raid"},
				  [7] = {t = "WHISPER", n = "Whisper"},
				  [6] = {t = "YELL", n = "Yell"},
				  [5] = {t = "OFFICER", n = "Officer"},
				  [93] = {t = "BATTLEGROUND", n = "Battlegground"}
				  }
Prat_chatList = chatList
function Prat_PlayerNames:OnInitialize()
    Prat_PlayerNames.db = Prat:AcquireDBNamespace("PlayerNames")
    
	local defaults = {
        on = true,
        brackets = "Angled",
        tabcomplete = true,
        level = true,
        classes = {},
        levels = {},
        subgroup = true,
		groupchan = {},
		groupAcronim = "[%s]",
        keep = true,
		census = false,
        colormode = "CLASS",
        usecommoncolor = true,
        color = {
            r = 1,
            g = 0,
            b = 1,
        },
		markself = true,
		selfcolor = {
            r = 1,
            g = 0,
            b = 1,
        },
    }
	
	for id,chat in pairs( chatList) do defaults.groupchan[chat.t] = true end
	
	Prat:RegisterDefaults("PlayerNames", "profile", defaults)	
    Prat.Options.args.playernames = {
        name = L["PlayerNames"],
        desc = L["Player name formating options."],
        type = "group",
        args = {
            brackets = {
                name = L["Brackets"],
                desc = L["Sets style of brackets to use around player names."],
                type = "text",
                order = 140,
                get = function() return Prat_PlayerNames.db.profile.brackets end,
                set = function(v) Prat_PlayerNames.db.profile.brackets = v end,
                validate = {["Square"] = L["Square"], ["Angled"] = L["Angled"], ["None"] = L["None"]}
            },
            colormode = {
                name = L["Color Mode"],
                desc = L["How to color Players name."],
                type = "text",
                order = 150,
                get = function() return Prat_PlayerNames.db.profile.colormode end,
                set = function(v) Prat_PlayerNames.db.profile.colormode = v end,
                validate = {["RANDOM"] = L["Random"], ["CLASS"] = L["Class"], ["NONE"] = L["None"]}
            },
            level = {
                name = L["Show Level"],
                desc = L["Toggle level showing."],
                type = "toggle",
                order = 160,
                get = function() return Prat_PlayerNames.db.profile.level end,
                set = function(v) Prat_PlayerNames.db.profile.level = v end
            },
            subgroup = {
                name = L["Show Group"],
                desc = L["Toggle raid group showing."],
                type = "group",
                order = 170,
				args = {
					set = {
                         name = L["Group acronim"],
                         desc = L["Simbol of raid group added to group number"],
                         type = "text",
                         usage = "<string>",
						 order = 90,
                         get = function() return Prat_PlayerNames.db.profile.groupAcronim end,
                         set = function(v) Prat_PlayerNames.db.profile.groupAcronim = v end
					},
				},
                
            },
            keep = {
                name = L["Keep Info"],
                desc = L["Keep player information between session."],
                type = "toggle",
                order = 180,
                get = function() return Prat_PlayerNames.db.profile.keep end,
                set = function(v) Prat_PlayerNames.db.profile.keep = v end
            },
			census = {
                name = L["Use Census+"],
                desc = L["Use Census+ database"],
                type = "toggle",
                order = 185,
                get = function() return Prat_PlayerNames.db.profile.census end,
                set = function(v) Prat_PlayerNames.db.profile.census = v end
            },
            tabcomplete = {
                name = L["Use TabComplete"],
                desc = L["Toggle tab completion of player names."],
                type = "toggle",
                order = 190,
                get = function() return Prat_PlayerNames.db.profile.tabcomplete end,
                set = function(v) Prat_PlayerNames.db.profile.tabcomplete = v; self:TabComplete(v) end
            },
            usecommoncolor = {
                name = L["Use common color"],
                desc = L["Toggle useing common color for unknown player names."],
                type = "toggle",
                order = 200,
                get = function() return Prat_PlayerNames.db.profile.usecommoncolor end,
                set = function(v) Prat_PlayerNames.db.profile.usecommoncolor = v end
            },
            setcolor = {
                name = L["Set common color"],
                desc = L["Change the common color of PlayerNames"],
                type = "color",
                order = 210,
                get = function() return Prat_PlayerNames.db.profile.color.r, Prat_PlayerNames.db.profile.color.g, Prat_PlayerNames.db.profile.color.b end,
                set = function(r, g, b, a) Prat_PlayerNames.db.profile.color.r, Prat_PlayerNames.db.profile.color.g, Prat_PlayerNames.db.profile.color.b = r, g, b end,
                disabled = function() if not Prat_PlayerNames.db.profile.usecommoncolor then return true else return false end end,
            },
			markself = {
                name = L["Mark self"],
                desc = L["Toggle color marking of your nikname in chat."],
                type = "toggle",
                order = 220,
                get = function() return Prat_PlayerNames.db.profile.markself end,
                set = function(v) Prat_PlayerNames.db.profile.markself = v end
            },
            setselfcolor = {
                name = L["Set mark color"],
                desc = L["Change the mark color of your nikname"],
                type = "color",
                order = 230,
                get = function() return Prat_PlayerNames.db.profile.selfcolor.r, Prat_PlayerNames.db.profile.selfcolor.g, Prat_PlayerNames.db.profile.selfcolor.b end,
                set = function(r, g, b, a) Prat_PlayerNames.db.profile.selfcolor.r, Prat_PlayerNames.db.profile.selfcolor.g, Prat_PlayerNames.db.profile.selfcolor.b = r, g, b end,
                disabled = function() if not Prat_PlayerNames.db.profile.markself then return true else return false end end,
            },
            toggle = {
                name = L["Toggle"],
                desc = L["Toggle the module on and off."],
                type = "toggle",
                order = 500,
                get = function() return Prat_PlayerNames.db.profile.on end,
                set = function() Prat_PlayerNames.db.profile.on = Prat:ToggleModuleActive("playernames") end
            }
        }
    }
	local ord = 100
	local menu = Prat.Options.args.playernames.args.subgroup.args
	for id,chat in pairs( chatList) do
		menu[chat.t] = {}
		menu[chat.t].name = chat.n
		menu[chat.t].desc = sformat(L["Enable group number at %s"],chat.n)
		menu[chat.t].type = "toggle"
		menu[chat.t].order = ord
		--menu[chat].get = function() return Prat_PlayerNames.db.profile.groupchan[chat] end
		--menu[chat].set = function(v) Prat_PlayerNames.db.profile.groupchan[chat] = not  Prat_PlayerNames.db.profile.groupchan[chat] end
		ord = ord +10
	end
	menu["SAY"].get  = function() return Prat_PlayerNames.db.profile.groupchan["SAY"] end
	menu["SAY"].set = function(v) Prat_PlayerNames.db.profile.groupchan["SAY"] = v end
	menu["GUILD"].get  = function() return Prat_PlayerNames.db.profile.groupchan["GUILD"] end
	menu["GUILD"].set = function(v) Prat_PlayerNames.db.profile.groupchan["GUILD"] = v end
	menu["PARTY"].get  = function() return Prat_PlayerNames.db.profile.groupchan["PARTY"] end
	menu["PARTY"].set = function(v) Prat_PlayerNames.db.profile.groupchan["PARTY"] = v end
	menu["RAID"].get  = function() return Prat_PlayerNames.db.profile.groupchan["RAID"] end
	menu["RAID"].set = function(v) Prat_PlayerNames.db.profile.groupchan["RAID"] = v end
	menu["WHISPER"].get  = function() return Prat_PlayerNames.db.profile.groupchan["WHISPER"] end
	menu["WHISPER"].set = function(v) Prat_PlayerNames.db.profile.groupchan["WHISPER"] = v end
	menu["YELL"].get  = function() return Prat_PlayerNames.db.profile.groupchan["YELL"] end
	menu["YELL"].set = function(v) Prat_PlayerNames.db.profile.groupchan["YELL"] = v end
	menu["OFFICER"].get  = function() return Prat_PlayerNames.db.profile.groupchan["OFFICER"] end
	menu["OFFICER"].set = function(v) Prat_PlayerNames.db.profile.groupchan["OFFICER"] = v end
	menu["BATTLEGROUND"].get  = function() return Prat_PlayerNames.db.profile.groupchan["BATTLEGROUND"] end
	menu["BATTLEGROUND"].set = function(v) Prat_PlayerNames.db.profile.groupchan["BATTLEGROUND"] = v end
end

function Prat_PlayerNames:OnEnable()
    for i = 1, NUM_CHAT_WINDOWS do
        self:Hook(getglobal("ChatFrame"..i), "AddMessage")
    end

    self:RegisterEvent("FRIENDLIST_UPDATE", "updateFriends")
    self:RegisterEvent("GUILD_ROSTER_UPDATE", "updateGuild")
    self:RegisterEvent("RAID_ROSTER_UPDATE", "updateRaid")
    self:RegisterEvent("PARTY_MEMBERS_CHANGED", "updateParty")
    self:RegisterEvent("PLAYER_TARGET_CHANGED", "updateTarget")
    self:RegisterEvent("WHO_LIST_UPDATE", "updateWho")
	self:RegisterEvent("CHAT_MSG_SYSTEM", "updateWho") -- for short /who command

    for name, color in pairs(Prat_PlayerNames.db.profile.classes) do Prat_PlayerNames.Classes[name] = color end
    for name, level in pairs(Prat_PlayerNames.db.profile.levels) do	Prat_PlayerNames.Levels[name] = level end

 	local PlayerClass
    _, PlayerClass = UnitClass("player")
	self.playerName = UnitName("player");
    self:addName(self.playerName, Playerclass, UnitLevel("player"))
	

	self:updateParty()
	self:updateRaid()
	self:updateFriends()
	self:updateGuild()
	    
    self:TabComplete(Prat_PlayerNames.db.profile.tabcomplete)
end

function Prat_PlayerNames:OnDisable()
    self:TabComplete(false)
end

function Prat_PlayerNames:updateFriends()
    local Name, Class, Level
    for i = 1, GetNumFriends() do
        Name, Level, Class = GetFriendInfo(i)
        self:addName(Name, Class, Level)
    end
end

function Prat_PlayerNames:updateGuild()
    local Name, Class, Level
    for i = 1, GetNumGuildMembers() do
        Name, _, _, Level, Class = GetGuildRosterInfo(i)
        self:addName(Name, Class, Level)
    end
end

function Prat_PlayerNames:updateRaid()
    local Name, Class, SubGroup, Level
	Prat_PlayerNames.Subgroups = {}
    for i = 1, GetNumRaidMembers() do
        Name, _, SubGroup, Level, Class = GetRaidRosterInfo(i)
        self:addName(Name, Class, Level, SubGroup)
    end
end

function Prat_PlayerNames:updateParty()
    local Class, Unit
    for i = 1, GetNumPartyMembers() do
        Unit = "party" .. i
        _, Class = UnitClass(Unit)
        self:addName(UnitName(Unit), Class, UnitLevel(Unit))
    end
end

function Prat_PlayerNames:updateTarget()
    local Class
    if not UnitIsPlayer("target") or not UnitIsFriend("player", "target") then
        return
    end
    _, Class = UnitClass("target")
    self:addName(UnitName("target"), Class, UnitLevel("target"))
end

function Prat_PlayerNames:updateWho()
    local Name, Class, Level
    for i = 1, GetNumWhoResults() do
        Name, _, Level, _, Class = GetWhoInfo(i)
        self:addName(Name, Class, Level)
    end
end

function Prat_PlayerNames:addName(Name, Class, Level, SubGroup)
  if Name then
	if Level and Level ~= 0 and ( not ( Prat_PlayerNames.Levels[Name] and Prat_PlayerNames.Levels[Name] > Level ) ) then 
		Prat_PlayerNames.Levels[Name] = Level
        if ( Prat_PlayerNames.db.profile.keep) then	Prat_PlayerNames.db.profile.levels[Name] = Level end
	end
    if Class then
        Prat_PlayerNames.Classes[Name] = Class
        if ( Prat_PlayerNames.db.profile.keep ) then Prat_PlayerNames.db.profile.classes[Name] = Class end
    end
	if SubGroup then
		Prat_PlayerNames.Subgroups[Name] = SubGroup
	end
  end
end

function Prat_PlayerNames:randomColor(Name)
	local hash = 17
	for i=1,string.len(Name) do
		hash = hash * 37 * string.byte(Name, i);
	end
	
	local r = math.floor(math.mod(hash / 97, 255));
	local g = math.floor(math.mod(hash / 17, 255));
	local b = math.floor(math.mod(hash / 227, 255));
	    
    if ((r * 299 + g * 587 + b * 114) / 1000) < 105 then
    	r = math.abs(r - 255);
        g = math.abs(g - 255);
        b = math.abs(b - 255);
    end

	return sformat("%02x%02x%02x", r, g, b)
end

function Prat_PlayerNames:addInfo(Name, id)
	if Name then
        local returnName = Name

        if Prat_PlayerNames.Levels[Name] and Prat_PlayerNames.db.profile.level then
			returnName = sformat("%s:%s", Prat_PlayerNames.Levels[Name], returnName)
		elseif Prat_PlayerNames.db.profile.census and CensusPlus_ForAllCharacters then
			local realmName = g_CensusPlusLocale .. GetCVar("realmName");
			CensusPlus_ForAllCharacters( realmName, UnitFactionGroup("player"), nil, nil, nil, nil, Prat_InternalWhoResult)		
        end
        
		if Prat_PlayerNames.Subgroups[Name] and (id == nil or (chatList[id] and Prat_PlayerNames.db.profile.groupchan[chatList[id].t])) then
			local grp = sformat(Prat_PlayerNames.db.profile.groupAcronim,Prat_PlayerNames.Subgroups[Name] or "")
			returnName = sformat("%s%s", returnName, grp )
        end
		if Prat_PlayerNames.Classes[Name] then
		        if Prat_PlayerNames.db.profile.colormode == "CLASS" then
				returnName =  sformat("|cff%s%s|r", BC:GetHexColor(Prat_PlayerNames.Classes[Name]), returnName)
			elseif Prat_PlayerNames.db.profile.colormode == "RANDOM" then
				returnName =  sformat("|cff%s%s|r", self:randomColor(Name), returnName)			
		        end
		else
			if Prat_PlayerNames.db.profile.usecommoncolor then
				local color = sformat("%02x%02x%02x", Prat_PlayerNames.db.profile.color.r*255, Prat_PlayerNames.db.profile.color.g*255, Prat_PlayerNames.db.profile.color.b*255)
				returnName = sformat("|cff%s%s|r", color, returnName)		
			end
		end
		
		return returnName
	else
		return ""
	end
end

function Prat_InternalWhoResult(Name, Level, guild, race, Class, lastSeen )
  if Name then
	if Level and Level ~= 0 and ( not ( Prat_PlayerNames.Levels[Name] and Prat_PlayerNames.Levels[Name] > Level ) ) then 
		Prat_PlayerNames.Levels[Name] = Level
        if ( Prat_PlayerNames.db.profile.keep) then	Prat_PlayerNames.db.profile.levels[Name] = Level end
	end
    if Class then
        Prat_PlayerNames.Classes[Name] = Class
        if ( Prat_PlayerNames.db.profile.keep ) then Prat_PlayerNames.db.profile.classes[Name] = Class end
    end
  end
end
function gisub(s, pat, repl, n)
    pat = sgsub(pat, '(%a)', 
               function (v) return '['..strupper(v)..strlower(v)..']' end)
    if n then
        return sgsub(s, pat, repl, n)
    else
        return sgsub(s, pat, repl)
    end
end
function Prat_PlayerNames:AddMessage(frame, text, r, g, b, id)
    if text and id then
        -- local Name = sgsub(text, ".*|Hplayer:(.-)|h.*", "%1")
        
        -- Sender's name is always the first linked player name in the message
        local _, _, Name = sfind(text, "|Hplayer:(.-)|h%[.-]|h")

        -- If self.playerName is a clickable link, don't color it
        local _, _, linkedName = sfind(text, sformat("Hplayer:(%s)", self.playerName))
        if not linkedName then
            _, _, linkedName = sfind(text, sformat("|h[(%s)]|h", self.playerName))
        end
		if not linkedName and Name ~= self.playerName and Prat_PlayerNames.db.profile.markself then 
			local textL = slower(text)    
			local playerL = slower(self.playerName)
			if sfind(textL, playerL) then
				local color = sformat("%02x%02x%02x", Prat_PlayerNames.db.profile.selfcolor.r*255, Prat_PlayerNames.db.profile.selfcolor.g*255, Prat_PlayerNames.db.profile.selfcolor.b*255)
				local returnName = sformat("|cff%s%s|r", color, self.playerName)
                text = gisub(text, self.playerName, returnName)
				PlaySound("FriendJoinGame");
			end
		end

        local Brackets
		Name = self:addInfo(Name, id)
        
        if Prat_PlayerNames.db.profile.brackets == "Angled" then
            Brackets = "<|Hplayer:%1|h" .. Name .. "|h>"
        elseif Prat_PlayerNames.db.profile.brackets == "None" then
            Brackets = "|Hplayer:%1|h" .. Name .. "|h"
        else
            Brackets = "[|Hplayer:%1|h" .. Name .. "|h]"
        end

        -- Only replace the first instance, and leave any linked names untouched
        text = sgsub(text, "|Hplayer:(.-)|h%[.-%]|h(.-:-)", Brackets .. "%2", 1)
    end
    Prat_PlayerNames.hooks[frame].AddMessage(frame, text, r, g, b, id)
end

function Prat_PlayerNames:TabComplete(enabled)
    if enabled then
        if not AceLibrary("AceTab-2.0"):IsTabCompletionRegistered("Prat_PlayerNames") then
            AceLibrary("AceTab-2.0"):RegisterTabCompletion("Prat_PlayerNames", "",
                function(t, text, pos)
                    for name in pairs(Prat_PlayerNames.Classes) do
                        table.insert(t, pos == 0 and name..":" or name)
                    end
                end,
                function(u, cands)
					local text = ""
                    for _, cand in ipairs(cands) do
						cand = sgsub(cand, ":", "")
						cand = self:addInfo(cand, nil)
						text = text .. " " .. cand
                    end
                    Prat:Print("Tab completion : " .. text)
                end
            )
        end
    else
        if AceLibrary("AceTab-2.0"):IsTabCompletionRegistered("Prat_PlayerNames") then
            AceLibrary("AceTab-2.0"):UnregisterTabCompletion("Prat_PlayerNames")
        end
    end
end
