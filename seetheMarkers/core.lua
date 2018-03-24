-- Addonname
-- Developed by Seethe - Well of Eternity

local addon, ns = ...

-----------------------------
-- Markers
-----------------------------
ns.markers = {
    1, -- Star
    2, -- Circle
    3, -- Diamond
    4, -- Triangle
    5, -- Moon
}


-----------------------------
-- Variables
-----------------------------
local isStarted = false
local next = 1


----------------------------------------------------------------------------------------------
-- Functions
----------------------------------------------------------------------------------------------

-- [1]
-- SetMarker()
-- Function that set fast icon markers (defined in ns.markers table)
-- You can setup targets by adding names to the correct table ns.enemies@dungeons.lua
----------------------------------------------------------------------------------------------
function SetMarker()
    local name = UnitName("mouseover")
    local currIcon = GetRaidTargetIndex("mouseover");
    if (next > 5) then next = 1 end
    
    for i = 1, #ns.enemies, 1 do
        for j = 1, #ns.enemies[i], 1 do
            if (name == ns.enemies[i][j] and currIcon == nil and isStarted == false) then
        
                SetRaidTarget("mouseover", ns.markers[1]);
                isStarted = true
                next = next + 1

             elseif (name == ns.enemies[i][j] and currIcon == nil and isStarted == true) then

                SetRaidTarget("mouseover", ns.markers[next]);
                next = next + 1
             end
        end
    end 
end

----------------------------------------------------------------------------------------------
-- [2]
-- HighPrio()
-- Function that set "Skull" and "X" on high priority targets

-- You can setup high priority target by adding names to 
-- the correct table ns.highPriority@dungeons.lua
----------------------------------------------------------------------------------------------
function HighPrio() 
    local name = UnitName("target") -- Get the current unit name
    local currIcon = GetRaidTargetIndex("target"); -- Get the current target icon

    -- Double loop of death - Should be a better way to do this
    for i = 1, #ns.highPriority, 1 do
        for j = 1, #ns.highPriority[i], 1 do
            if (name == ns.highPriority[i][j] and currIcon == nil and isStarted == false) then
                SetRaidTarget("target", 8);
                isStarted = true
            elseif (name == ns.highPriority[i][j] and currIcon == nil and isStarted == true) then
                SetRaidTarget("target", 7);
                isStarted = false
            end
        end
    end
end



-----------------------------
-- Handler
-----------------------------
local frame = CreateFrame("Frame", nil, self)

frame:RegisterEvent("PLAYER_ENTERING_WORLD") -- Login, reload, enter/leave instanced content (loading screens)
frame:RegisterEvent("UPDATE_MOUSEOVER_UNIT") -- Mouseover Marking
frame:RegisterEvent("PLAYER_TARGET_CHANGED") -- Target Marking (High Priority Targets)


frame:SetScript("OnEvent", function(self, event, ...) 

        if (event == "UPDATE_MOUSEOVER_UNIT" or event == "PLAYER_ENTERING_WORLD") then
        SetMarker()

        elseif (event == "PLAYER_ENTERING_WORLD" or event == "PLAYER_TARGET_CHANGED") then
        HighPrio()

    end
end)


