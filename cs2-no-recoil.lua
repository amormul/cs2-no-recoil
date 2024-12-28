-- Setup Instructions:
-- Windows: Sensitivity 6, Pointer Precision OFF
-- CS2: Sensitivity 3.09, Raw Input ON, Mouse Acceleration OFF
-- Supported Weapons: AK47, MP9, M4A4, M4A1, MAC10, FAMAS

-- Key Bindings

local Activation_Key = 4 -- Toggle script (default: G4)
local Selection_Key = 5 -- Switch weapons (default: G5)

-- Recoil Patterns
local AK47_Pattern = { 
   { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 5 }, { x = 0, y = 6 }, { x = 0, y = 7 }, { x = 0, y = 7 }, { x = 0, y = 8 }, { x = 0, y = 7 }, { x = 0, y = 6 }, { x = 0, y = 7 }, { x = 0, y = 8 }, { x = -2, y = 8 }, { x = 1, y = 7 }, { x = 3, y = 7 }, { x = 6, y = 7 }, { x = 6, y = 7 }, { x = 6, y = 7 }, { x = 0, y = 7 }, { x = 1, y = 7 }, { x = 2, y = 7 }, { x = 2, y = 8 }, { x = 2, y = 8 }, { x = 2, y = 9 }, { x = -3, y = -4 }, { x = -8, y = -1 }, { x = -15, y = -1 }, { x = -15, y = -1 }, { x = -5, y = 0 }, { x = -5, y = 0 }, { x = -5, y = 0 }, { x = -5, y = 0 }, { x = -1, y = 1 }, { x = 4, y = 2 }, { x = 4, y = 2 }, { x = 5, y = 1 }, { x = -5, y = 1 }, { x = -5, y = 1 }, { x = -10, y = 1 }, { x = -10, y = 0 }, { x = -5, y = 0 }, { x = -3, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = -2, y = 1 }, { x = 6, y = 1 }, { x = 8, y = 2 }, { x = 14, y = 2 }, { x = 15, y = 2 }, { x = 1, y = 2 }, { x = 1, y = 2 }, { x = 1, y = 1 }, { x = 1, y = 1 }, { x = 5, y = 1 }, { x = 6, y = 1 }, { x = 6, y = 1 }, { x = 6, y = 1 }, { x = 6, y = -1 }, { x = 10, y = -1 }, { x = 10, y = -2 }, { x = 10, y = -3 }, { x = 0, y = -5 }, { x = 0, y = 0 }, { x = -5, y = 0 }, { x = -5, y = 0 }, { x = -5, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 1 }, { x = 0, y = 2 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 3, y = 1 }, { x = 3, y = -1 }, { x = 3, y = -1 }, { x = 0, y = 0 }, { x = -3, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -7, y = 0 }, { x = -7, y = 0 }, { x = -8, y = 0 }, { x = -8, y = -2 }, { x = -15, y = -3 }, { x = -16, y = -5 }, { x = -18, y = -7 }, { x = 0, y = 0 }, { x = 0, y = 0 },
}
local M4A4_Pattern = { 
   { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 4 }, { x = 0, y = 5 }, { x = 0, y = 6 }, { x = 0, y = 7 }, { x = 0, y = 5 }, { x = 0, y = 2 }, { x = 0, y = 5 }, { x = 0, y = 2 }, { x = 0, y = 5 }, { x = 0, y = 6 }, { x = -1, y = 9 }, { x = 0, y = 8 }, { x = 1, y = 6 }, { x = 0, y = 7 }, { x = 0, y = 8 }, { x = 1, y = 8 }, { x = 2, y = 7 }, { x = 2, y = 7 }, { x = 3, y = 4 }, { x = 4, y = -1 }, { x = 4, y = -1 }, { x = 4, y = -1 }, { x = 3, y = 1 }, { x = 3, y = 1 }, { x = 3, y = 1 }, { x = 1, y = 1 }, { x = 0, y = 1 }, { x = -3, y = 1 }, { x = -5, y = 1 }, { x = -8, y = 1 }, { x = -10, y = 1 }, { x = -10, y = 1 }, { x = -10, y = 1 }, { x = -10, y = 1 }, { x = -10, y = 1 }, { x = -5, y = -1 }, { x = -5, y = -1 }, { x = -5, y = -1 }, { x = -5, y = -1 }, { x = 1, y = -1 }, { x = 1, y = -1 }, { x = 2, y = -1 }, { x = 2, y = 2 }, { x = 2, y = 2 }, { x = 2, y = 1 }, { x = 0, y = 1 }, { x = -2, y = 1 }, { x = -2, y = 1 }, { x = -2, y = 1 }, { x = -4, y = -1 }, { x = -4, y = -1 }, { x = -2, y = 1 }, { x = 2, y = 1 }, { x = 4, y = 1 }, { x = 8, y = 0 }, { x = 14, y = 0 }, { x = 18, y = 0 }, { x = 0, y = 0 }, { x = -2, y = 0 }, { x = 0, y = 0 }, { x = 5, y = 0 }, { x = 3, y = 0 }, { x = 2, y = 0 }, { x = 5, y = 0 }, { x = 3, y = 0 }, { x = 2, y = 0 }, { x = 5, y = 0 }, { x = 3, y = 0 }, { x = 2, y = 0 }, { x = 0, y = -1 }, { x = 2, y = -1 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -3, y = 2 }, { x = -3, y = 1 }, { x = 4, y = 2 }, { x = 8, y = 1 }, { x = 12, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 },
}
local M4A1_Pattern = { 
   { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 2 }, { x = -1, y = 2 }, { x = -1, y = 3 }, { x = 0, y = 3 }, { x = -1, y = 4 }, { x = 1, y = 4 }, { x = 3, y = 5 }, { x = 3, y = 4 }, { x = -1, y = 4 }, { x = -2, y = 4 }, { x = -2, y = 5 }, { x = -1, y = 4 }, { x = -2, y = 4 }, { x = 0, y = 4 }, { x = 0, y = 4 }, { x = 2, y = 4 }, { x = 4, y = 4 }, { x = 5, y = 4 }, { x = 5, y = 4 }, { x = 0, y = 0 }, { x = 1, y = 0 }, { x = 2, y = 0 }, { x = 2, y = 0 }, { x = 3, y = 0 }, { x = -1, y = 3 }, { x = -2, y = 4 }, { x = -2, y = 0 }, { x = -1, y = -2 }, { x = -1, y = 2 }, { x = -2, y = 3 }, { x = -2, y = 5 }, { x = -2, y = 0 }, { x = -5, y = 0 }, { x = -6, y = 0 }, { x = -7, y = -2 }, { x = -6, y = -2 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 },
}
local FAMAS_Pattern = { 
   { x = 0, y = 0 }, { x = 0, y = 0 }, { x = -1, y = 1 }, { x = -1, y = 3 }, { x = -1, y = 3 }, { x = -2, y = 2 }, { x = -2, y = 3 }, { x = -1, y = 4 }, { x = -1, y = 4 }, { x = 0, y = 5 }, { x = 0, y = 6 }, { x = 1, y = 5 }, { x = 1, y = 5 }, { x = 3, y = 5 }, { x = 3, y = 4 }, { x = 3, y = 2 }, { x = 3, y = 2 }, { x = 4, y = 3 }, { x = 5, y = 4 }, { x = 1, y = 4 }, { x = -2, y = 3 }, { x = -3, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 2 }, { x = 0, y = 1 }, { x = 0, y = 0 }, { x = 1, y = 1 }, { x = 2, y = 0 }, { x = 3, y = 1 }, { x = 4, y = 1 }, { x = 4, y = 1 }, { x = 3, y = 1 }, { x = 3, y = 1 }, { x = 3, y = 1 }, { x = 5, y = 1 }, { x = 5, y = 1 }, { x = 5, y = 1 }, { x = 5, y = -1 }, { x = 5, y = -1 }, { x = 0, y = -1 }, { x = 1, y = -1 }, { x = 3, y = -2 }, { x = 5, y = -2 }, { x = 0, y = 0 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 1 }, { x = -2, y = 1 }, { x = -3, y = 1 }, { x = -3, y = 1 }, { x = -3, y = 0 }, { x = -3, y = 0 }, { x = -2, y = 0 }, { x = -3, y = 0 }, { x = 0, y = 0 }, { x = 2, y = 0 }, { x = 4, y = -1 }, { x = 4, y = -1 }, { x = 3, y = -2 }, { x = 3, y = -2 }, { x = 3, y = -2 }, { x = 3, y = -2 }, { x = 3, y = -1 }, { x = 3, y = -2 }, { x = 3, y = -1 },
}
local MP9_Pattern = { 
   { x = 0, y = 1 }, { x = 0, y = 3 }, { x = 0, y = 3 }, { x = 0, y = 3 }, { x = 0, y = 5 }, { x = 0, y = 5 }, { x = 1, y = 5 }, { x = 1, y = 6 }, { x = 1, y = 7 }, { x = 1, y = 7 }, { x = 0, y = 7 }, { x = -2, y = 8 }, { x = -3, y = 8 }, { x = 0, y = 9 }, { x = 3, y = 9 }, { x = 3, y = 7 }, { x = 5, y = 0 }, { x = 7, y = 1 }, { x = 7, y = 1 }, { x = 8, y = 1 }, { x = 8, y = 1 }, { x = 8, y = 1 }, { x = 8, y = 0 }, { x = 4, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 1 }, { x = -5, y = 1 }, { x = -6, y = 3 }, { x = -6, y = 2 }, { x = -5, y = 2 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -7, y = 3 }, { x = -7, y = 3 }, { x = -7, y = 3 }, { x = -8, y = -3 }, { x = -8, y = -2 }, { x = 0, y = -2 }, { x = 0, y = -2 }, { x = 0, y = -2 }, { x = 3, y = -2 }, { x = 5, y = -1 }, { x = 7, y = 0 }, { x = 7, y = 0 }, { x = 3, y = 0 }, { x = -1, y = 0 }, { x = -1, y = 0 }, { x = -5, y = 1 }, { x = -5, y = 2 }, { x = -7, y = 2 }, { x = -7, y = 2 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = -3, y = 0 }, { x = -3, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 },
}
local MAC10_Pattern = { 
   { x = 0, y = 1 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 3 }, { x = 2, y = 5 }, { x = 3, y = 6 }, { x = 4, y = 6 }, { x = 4, y = 6 }, { x = 4, y = 6 }, { x = 4, y = 6 }, { x = 4, y = 6 }, { x = 0, y = 6 }, { x = 0, y = 6 }, { x = -2, y = 6 }, { x = -2, y = 6 }, { x = 1, y = 5 }, { x = 3, y = 5 }, { x = 3, y = 5 }, { x = 3, y = 4 }, { x = 1, y = 2 }, { x = 1, y = 1 }, { x = -2, y = 2 }, { x = -2, y = 2 }, { x = -2, y = 2 }, { x = -2, y = 1 }, { x = -1, y = 1 }, { x = -1, y = 1 }, { x = -1, y = 0 }, { x = -1, y = 1 }, { x = -3, y = 1 }, { x = -5, y = -1 }, { x = -5, y = -1 }, { x = -6, y = -1 }, { x = -7, y = 2 }, { x = -8, y = 2 }, { x = -2, y = 2 }, { x = -2, y = 0 }, { x = -2, y = 0 }, { x = -1, y = 0 }, { x = -1, y = 0 }, { x = -1, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = -3, y = 0 }, { x = -5, y = 0 }, { x = -8, y = 0 }, { x = -4, y = 0 }, { x = 0, y = 0 }, { x = 3, y = 0 }, { x = 6, y = 0 }, { x = 6, y = 0 }, { x = 6, y = 0 }, { x = 6, y = 0 }, { x = 3, y = 0 }, { x = 2, y = 0 }, { x = 3, y = 0 }, { x = 5, y = 0 }, { x = 4, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 },
}

-- Helper Functions
local function RetrieveWeaponName(weapon,act)
   if weapon == 1 then 
      return"AK47"
   elseif weapon == 2 then
      return"M4A4"
   elseif weapon == 3 then
      return"M4A1"
   elseif weapon == 4 then
      return"FAMAS"
   elseif weapon == 5 then
      return"MP9"
   elseif weapon == 6 then
      return"MAC10"
   end
   if act then
      return"ON"
   else
      return"OFF"
   end
end

local function OutputLogs(weapon, act)
   OutputLogMessage(RetrieveWeaponName(weapon,act).."\n");
   OutputDebugMessage(RetrieveWeaponName(weapon,act).."\n");
   ClearLCD();
   OutputLCDMessage(RetrieveWeaponName(weapon,act));
end

-- Script Variables
local Spray_Randomize = math.random(29,31)
local Recoil_Activator,R_Weapon_Selector = false,0

EnablePrimaryMouseButtonEvents(true);

-- Main Event Handler
function OnEvent(event, arg)
   if (event == "MOUSE_BUTTON_PRESSED" and arg == Activation_Key) then
      Recoil_Activator = not Recoil_Activator
      OutputLogs(nil,Recoil_Activator)
   end
   if Recoil_Activator then
      if (event == "MOUSE_BUTTON_PRESSED" and arg == Selection_Key) then
         if R_Weapon_Selector >= 6 then R_Weapon_Selector = 0 end
         R_Weapon_Selector = R_Weapon_Selector + 1
         OutputLogs(R_Weapon_Selector,nil)
      end
      if (R_Weapon_Selector == 1) and IsMouseButtonPressed(1) then
         for i = 1, #AK47_Pattern do
            if IsMouseButtonPressed(1) then
               Sleep(Spray_Randomize)
               MoveMouseRelative( AK47_Pattern[i].x, AK47_Pattern[i].y )
            end
         end
      end
      if (R_Weapon_Selector == 2) and IsMouseButtonPressed(1) then
         for i = 1, #M4A4_Pattern do
            if IsMouseButtonPressed(1) then
               Sleep(Spray_Randomize)
               MoveMouseRelative( M4A4_Pattern[i].x, M4A4_Pattern[i].y )
            end
         end
      end
      if (R_Weapon_Selector == 3) and IsMouseButtonPressed(1) then
         for i = 1, #M4A1_Pattern do
            if IsMouseButtonPressed(1) then
               Sleep(Spray_Randomize)
               MoveMouseRelative( M4A1_Pattern[i].x, M4A1_Pattern[i].y )
            end
         end
      end
      if (R_Weapon_Selector == 4) and IsMouseButtonPressed(1) then
         for i = 1, #FAMAS_Pattern do
            if IsMouseButtonPressed(1) then
               Sleep(Spray_Randomize)
               MoveMouseRelative( FAMAS_Pattern[i].x, FAMAS_Pattern[i].y )
            end
         end
      end
      if (R_Weapon_Selector == 5) and IsMouseButtonPressed(1) then
         for i = 1, #MP9_Pattern do
            if IsMouseButtonPressed(1) then
               Sleep(Spray_Randomize)
               MoveMouseRelative( MP9_Pattern[i].x, MP9_Pattern[i].y )
            end
         end
      end
      if (R_Weapon_Selector == 6) and IsMouseButtonPressed(1) then
         for i = 1, #MAC10_Pattern do
            if IsMouseButtonPressed(1) then
               Sleep(Spray_Randomize)
               MoveMouseRelative( MAC10_Pattern[i].x, MAC10_Pattern[i].y )
            end
         end
      end
   end
end