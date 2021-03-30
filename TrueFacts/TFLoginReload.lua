local prefix = "True Facts:"
local playerName = UnitName("player")

local function OnEvent(self, event, ...)
    if event == "CHAT_MSG_ADDON" then
        print(event, ...)
    elseif event == "PLAYER_ENTERING_WORLD" then
        local isInitialLogin, isReloadingUi = ...
        if isInitialLogin or isReloadingUi then
            C_ChatInfo.SendAddonMessage(prefix, "Hello! Try typing /fact or /facts in chat!", "SAY", playerName)
            C_ChatInfo.RegisterAddonMessagePrefix(prefix)
            C_ChatInfo.SendAddonMessage(prefix, "You can also add your own name after /fact or /facts!", "SAY", playerName)
        end
    end
end

local f = CreateFrame("Frame")
f:RegisterEvent("CHAT_MSG_ADDON")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", OnEvent)

