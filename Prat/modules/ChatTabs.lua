---------------------------------------------------------------------------------
--
-- Prat - A framework for World of Warcraft chat mods
--
-- Copyright (C) 2006-2007  Prat Development Team
--
-- This program is free software; you can redistribute it and/or
-- modify it under the terms of the GNU General Public License
-- as published by the Free Software Foundation; either version 2
-- of the License, or (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to:
--
-- Free Software Foundation, Inc., 
-- 51 Franklin Street, Fifth Floor, 
-- Boston, MA  02110-1301, USA.
--
--
-------------------------------------------------------------------------------



--[[
Name: PratChatTabs
Revision: $Revision: 25896 $
Author(s): Sylvanaar (sylvanaar@mindspring.com)
Website: http://www.wowace.com/files/index.php?path=Prat/
Documentation: http://www.wowace.com/wiki/Prat/Integrated_Modules#ChatTabs
Subversion: http://svn.wowace.com/wowace/trunk/Prat/
Discussions: http://groups.google.com/group/wow-prat
Issues and feature requests: http://code.google.com/p/prat/issues/list
Description: Module for Prat that adds chat window tab options.
Dependencies: Prat
]]

-- set prat module name

-- define localized strings
local L = AceLibrary("AceLocale-2.2"):new("PratChatTabs")

L:RegisterTranslations("enUS", function() return {
    ["ChatTabs"] = true,
    ["Chat window tab options."] = true,
    ["SetMode"] = true,
    ["Toggle mode"] = true,
    ["SetAll"] = true,
    ["Set chat tabs for all windows."] = true,
    ["Individual"] = true,
    ["Toggle chat tabs for each window."] = true,
    ["Chat%dTab"] = true,
    ["Toggles chat tab options for chat window %d."] = true,
    ["Active Alpha"] = true,
    ["Sets alpha of chat tab for active chat frame."] = true,
    ["Not Active Alpha"] = true,
    ["Sets alpha of chat tab for not active chat frame."] = true,
    ["All"] = true,
    ["Individual"] = true,
    ["Always Visible"] = true,
    ["Hidden"] = true,
    ["Default"] = true,
    ["Flash Selected Tab"] = true,
    ["Toggle flashing the active chat tab on whispers."] = true,
    ["Toggle"] = true,
    ["Toggle the module on and off."] = true,
    ["Set chattab on login"] = true,
    ["Set number of chattab to show on login."] = true,
} end)

L:RegisterTranslations("ruRU", function() return {
    ["ChatTabs"] = "Закладки",
    ["Chat window tab options."] = "Настройки закладок окошек чата",
    ["SetMode"] = "Установка мода",
    ["Toggle mode"] = "Переключение мода",
    ["SetAll"] = "Включить все",
    ["Set chat tabs for all windows."] = "Установить для всех закладок",
    ["Individual"] = "Индивидуально",
    ["Toggle chat tabs for each window."] = "Установить для каждой закладки",
    ["Chat%dTab"] = "Закладка%d",
    ["Toggles chat tab options for chat window %d."] = "Переключить настройки закладки для окна %d",
    ["Active Alpha"] = "Прозрачность Активного",
    ["Sets alpha of chat tab for active chat frame."] = "Установить прозрачность закладки активного окна",
    ["Not Active Alpha"] = "Прозрачность НеАктивного",
    ["Sets alpha of chat tab for not active chat frame."] = "Установить прозрачность закладки не активного окна",
    ["All"] = "Все",
    ["Individual"] = "Индивидуально",
    ["Always Visible"] = "Всегда видимое",
    ["Hidden"] = "Скрытое",
    ["Default"] = "По умолчанию",
    ["Flash Selected Tab"] = "Мерцание",
    ["Toggle flashing the active chat tab on whispers."] = "Переключение мерцания закладки при личных сообщениях",
    ["Toggle"] = "Вкл/Выкл",
    ["Toggle the module on and off."] = "Вкл/Выкл модуль.",
    ["Set chattab on login"] = "Показать чат после входа",
    ["Set number of chattab to show on login."] = "Установить номер чата который показать после входа",
} end)

L:RegisterTranslations("koKR", function() return {
    ["ChatTabs"] = "대화탭",
    ["Chat window tab options."] = "대화탭 설정",
    ["SetMode"] = "모드설정",
    ["Toggle mode"] = "모드 전환",
    ["SetAll"] = "모두설정",
    ["Set chat tabs for all windows."] = "모든 창에대한 대화탭을 설정합니다.",
    ["Individual"] = "개별",
    ["Toggle chat tabs for each window."] = "각 창에 대한 대화 탭을 전환합니다.",
    ["Chat%dTab"] = "대화%d탭",
    ["Toggles chat tab options for chat window %d."] = "%d 대화창에 대한 대화탭 설정을 전환합니다.",
    ["Active Alpha"] = "활성화 투명도",
    ["Sets alpha of chat tab for active chat frame."] = "활성화된 대화창에 대한 대화탭의 투명도를 설정합니다.",
    ["Not Active Alpha"] = "비활성화 투명도",
    ["Sets alpha of chat tab for not active chat frame."] = "비활성화 대화창에 대한 대화탭의 투명도를 설정합니다.",
    ["All"] = "모두",
    ["Individual"] = "개별",
    ["Always Visible"] = "항상 표시",
    ["Hidden"] = "숨김",
    ["Default"] = "기본값",
    ["Flash Selected Tab"] = "선택된 탭 강조",
    ["Toggle flashing the active chat tab on whispers."] = "귓속말시 활성화된 대화탭 강조를 전환합니다.",
    ["Toggle"] = "전환",
    ["Toggle the module on and off."] = "모듈 켜고 끄기를 전환합니다.",
    ["Set chattab on login"] = true,
    ["Set number of chattab to show on login."] = true,
} end)

-- create prat module
Prat_ChatTabs = Prat:NewModule("tabs")
--Prat_ChatTabs.revision = tonumber(string.sub("$Revision: 25896 $", 12, -3))


-- define the default db values
function Prat_ChatTabs:OnInitialize()
    self.db = Prat:AcquireDBNamespace("ChatTabs")
	Prat:RegisterDefaults("ChatTabs", "profile", {
        on = false,
        notactivealpha = 0.5,
        activealpha = 1,
        mode = "ALL",
        cf = {"ALWAYS", "ALWAYS", "ALWAYS", "ALWAYS", "ALWAYS", "ALWAYS", "ALWAYS"},
        cfall = "ALWAYS",
        flashselected = false,
        showonlogin = 1,
	})
	Prat.Options.args.tabs = {
        name = L["ChatTabs"],
        desc = L["Chat window tab options."],
        type = "group",
        args = {
            mode = {
                name = L["SetMode"],
                desc = L["Toggle mode"],
                type = "text",
                order = 100,
                get = function() return self.db.profile.mode end,
                set = function(v) self.db.profile.mode = v self:OnUpdate() end,
                validate = {["ALL"] = L["All"], ["INDIVIDUAL"] = L["Individual"]},
            },
            all = {
                name = L["SetAll"],
                desc = L["Set chat tabs for all windows."],
                type = "text",
                disabled = function() if self.db.profile.mode == "INDIVIDUAL" then return true else return false end end,
                order = 110,
                get = function() return self.db.profile.cfall end,
                set = function(v) self.db.profile.cfall = v self:OnUpdate() end,
                validate = {["ALWAYS"] = L["Always Visible"], ["HIDDEN"] = L["Hidden"]},
            },
            individual = {
                name = L["Individual"],
                desc = L["Toggle chat tabs for each window."],
                type = "group",
                disabled = function() if self.db.profile.mode == "ALL" then return true else return false end end,
                order = 120,
                args = {
                    chat1 = {
                        name = string.format(L["Chat%dTab"], 1),
                        desc = string.format(L["Toggles chat tab options for chat window %d."], 1),
                        type = "text",
                        get = function() return self.db.profile.cf[1] end,
                        set = function(v)
                            self.db.profile.cf[1] = v
                            self:OnUpdate()
                            if self.db.profile.cf[1] == "DEFAULT" then
                                getglobal("ChatFrame1Tab"):Hide()
                            end
                        end,
                        validate = {["ALWAYS"] = L["Always Visible"], ["HIDDEN"] = L["Hidden"], ["DEFAULT"] = L["Default"]},
                    },
                    chat2 = {
                        name = string.format(L["Chat%dTab"], 2),
                        desc = string.format(L["Toggles chat tab options for chat window %d."], 2),
                        type = "text",
                        get = function() return self.db.profile.cf[2] end,
                        set = function(v)
                            self.db.profile.cf[2] = v
                            self:OnUpdate()
                            if self.db.profile.cf[2] == "DEFAULT" then
                                getglobal("ChatFrame2Tab"):Hide()
                            end
                        end,
                        validate = {["ALWAYS"] = L["Always Visible"], ["HIDDEN"] = L["Hidden"], ["DEFAULT"] = L["Default"]},
                    },
                    chat3 = {
                        name = string.format(L["Chat%dTab"], 3),
                        desc = string.format(L["Toggles chat tab options for chat window %d."], 3),
                        type = "text",
                        get = function() return self.db.profile.cf[3] end,
                        set = function(v)
                            self.db.profile.cf[3] = v
                            self:OnUpdate()
                            if self.db.profile.cf[3] == "DEFAULT" then
                                getglobal("ChatFrame3Tab"):Hide()
                            end
                        end,
                        validate = {["ALWAYS"] = L["Always Visible"], ["HIDDEN"] = L["Hidden"], ["DEFAULT"] = L["Default"]},
                    },
                    chat4 = {
                        name = string.format(L["Chat%dTab"], 4),
                        desc = string.format(L["Toggles chat tab options for chat window %d."], 4),
                        type = "text",
                        get = function() return self.db.profile.cf[4] end,
                        set = function(v)
                            self.db.profile.cf[4] = v
                            self:OnUpdate()
                            if self.db.profile.cf[4] == "DEFAULT" then
                                getglobal("ChatFrame4Tab"):Hide()
                            end
                        end,
                        validate = {["ALWAYS"] = L["Always Visible"], ["HIDDEN"] = L["Hidden"], ["DEFAULT"] = L["Default"]},
                    },
                    chat5 = {
                        name = string.format(L["Chat%dTab"], 5),
                        desc = string.format(L["Toggles chat tab options for chat window %d."], 5),
                        type = "text",
                        get = function() return self.db.profile.cf[5] end,
                        set = function(v)
                            self.db.profile.cf[5] = v
                            self:OnUpdate()
                            if self.db.profile.cf[5] == "DEFAULT" then
                                getglobal("ChatFrame5Tab"):Hide()
                            end
                        end,
                        validate = {["ALWAYS"] = L["Always Visible"], ["HIDDEN"] = L["Hidden"], ["DEFAULT"] = L["Default"]},
                    },
                    chat6 = {
                        name = string.format(L["Chat%dTab"], 6),
                        desc = string.format(L["Toggles chat tab options for chat window %d."], 6),
                        type = "text",
                        get = function() return self.db.profile.cf[6] end,
                        set = function(v)
                            self.db.profile.cf[6] = v
                            self:OnUpdate()
                            if self.db.profile.cf[6] == "DEFAULT" then
                                getglobal("ChatFrame6Tab"):Hide()
                            end
                        end,
                        validate = {["ALWAYS"] = L["Always Visible"], ["HIDDEN"] = L["Hidden"], ["DEFAULT"] = L["Default"]},
                    },
                    chat7 = {
                        name = string.format(L["Chat%dTab"], 7),
                        desc = string.format(L["Toggles chat tab options for chat window %d."], 7),
                        type = "text",
                        get = function() return self.db.profile.cf[7] end,
                        set = function(v)
                            self.db.profile.cf[7] = v
                            self:OnUpdate()
                            if self.db.profile.cf[7] == "DEFAULT" then
                                getglobal("ChatFrame7Tab"):Hide()
                            end
                        end,
                        validate = {["ALWAYS"] = L["Always Visible"], ["HIDDEN"] = L["Hidden"], ["DEFAULT"] = L["Default"]},
                    },
                },
            },
            activealpha = {
                name = L["Active Alpha"],
                desc = L["Sets alpha of chat tab for active chat frame."],
                type = "range",
                get = function() return self.db.profile.activealpha end,
                set = function(v) self.db.profile.activealpha = v self:OnUpdate() end,
                min = 0.1,
                max = 1,
                step = 0.1,
                order = 200,
            },
            notactivealpha = {
                name = L["Not Active Alpha"],
                desc = L["Sets alpha of chat tab for not active chat frame."],
                type = "range",
                get = function() return self.db.profile.notactivealpha end,
                set = function(v) self.db.profile.notactivealpha = v self:OnUpdate() end,
                min = 0.1,
                max = 1,
                step = 0.1,
                order = 210,
            },
            flashselected = {
                name = L["Flash Selected Tab"],
                desc = L["Toggle flashing the active chat tab on whispers."],
                type = "toggle",
                get = function() return self.db.profile.flashselected end,
                set = function(v) self.db.profile.flashselected = v  Prat_ChatTabs:HookFlash() end,
                order = 211
			},
            showonlogin = {
                name = L["Show chatbar on login"],
                desc = L["Set number of chatbar to show on login."],
                type = "range",
                get = function() return self.db.profile.showonlogin end,
                set = function(v) self.db.profile.showonlogin = v end,
                min = 1,
                max = 7,
                step = 1,
                order = 212,
            },
            toggle = {
                name = L["Toggle"],
                desc = L["Toggle the module on and off."],
                type = "toggle",
                order = 400,
                get = function() return self.db.profile.on end,
                set = function() self.db.profile.on = Prat:ToggleModuleActive("tabs") end
            }
        }
    }
end

--[[------------------------------------------------
    Module Event Functions
------------------------------------------------]]--

-- things to do when the module is enabled
function Prat_ChatTabs:OnEnable()
    self:SecureHook("FCF_OnUpdate", "OnUpdate")
    self:HookFlash()
    local frame = getglobal("ChatFrame"..(self.db.profile.showonlogin or 1));
    SELECTED_CHAT_FRAME = frame
    FCF_SelectDockFrame(frame)
    self:OnUpdate()
end

-- things to do when the module is enabled
function Prat_ChatTabs:OnDisable()
    if self:IsHooked("FCF_OnUpdate") then
        self:Unhook("FCF_OnUpdate")
    end
end

--[[------------------------------------------------
    Core Functions
------------------------------------------------]]--

function Prat_ChatTabs:HookFlash()
    if self.db.profile.flashselected then
        if not self:IsHooked("FCF_FlashTab") then
            self:SecureHook("FCF_FlashTab")
        end
    else
        if self:IsHooked("FCF_FlashTab") then
            self:Unhook("FCF_FlashTab")
        end
    end
end

function Prat_ChatTabs:OnUpdate(elapsed)
    if self.db.profile.on then
        for i=1,NUM_CHAT_WINDOWS do
            local cftab = getglobal("ChatFrame"..i.."Tab")
            if getglobal("ChatFrame"..i):IsVisible() or getglobal("ChatFrame"..i).isDocked then
                if self.db.profile.mode == "ALL" then
                    if SELECTED_CHAT_FRAME:GetID() == i then
                        cftab:SetAlpha(self.db.profile.activealpha)
                    else
                        cftab:SetAlpha(self.db.profile.notactivealpha)
                    end
                    if self.db.profile.cfall == "ALWAYS" then
                        cftab:Show()
                    elseif self.db.profile.cfall == "HIDDEN" then
                        cftab:Hide()
                    end
                else
                    if SELECTED_CHAT_FRAME:GetID() == i then
                        cftab:SetAlpha(self.db.profile.activealpha)
                    else
                        cftab:SetAlpha(self.db.profile.notactivealpha)
                    end
                    if self.db.profile.cf[i] == "ALWAYS" then
                        cftab:Show()
                    elseif self.db.profile.cf[i] == "HIDDEN" then
                        cftab:Hide()
                    end
                end
            end
        end
    end
end

function Prat_ChatTabs:FCF_FlashTab()
    local tabFlash = getglobal(this:GetName().."TabFlash");
    if ( not this.isDocked or UIFrameIsFlashing(tabFlash) ) then
        return;
    end
    tabFlash:Show();
    UIFrameFlash(tabFlash, 0.25, 0.25, 60, nil, 0.5, 0.5);
end
