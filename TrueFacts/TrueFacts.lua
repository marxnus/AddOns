
SLASH_FACT1 = "/fact"
SLASH_FACT2 = "/facts"

local function showFacts(name)
    local facts = "" .. name .. " Elskar Typpi!"

    message(facts)
end

-- /fact viktor
local function FactHandler(name)
    local customName = string.len(name) > 0

    if(customName) then
        showFacts(name)
    else
        local playerName = UnitName("player")
        showFacts(playerName)
    end
end

SlashCmdList["FACT"] = FactHandler;

-- local name = UnitName("Player")





