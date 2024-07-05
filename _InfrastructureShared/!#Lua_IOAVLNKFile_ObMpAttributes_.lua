local L0_0
L0_0 = ""
if mp.get_mpattribute("Lua:LNK_Settings!HasArguments") then
  L0_0 = "Args"
end
if mp.get_mpattribute("Lua:LNK_Settings!RunMinimized") then
  L0_0 = L0_0 .. "Min"
end
if mp.get_mpattribute("RPF:TopLevelFile") then
  mp.set_mpattribute("Lua:IOAVTopLevelLNKFile" .. L0_0)
  mp.set_mpattribute("//Lua:GIOAVTopLevelLNKFile" .. L0_0)
elseif not mp.get_mpattribute("//Lua:GIOAVFirstLNKFile" .. L0_0 .. "InContainer") then
  mp.set_mpattribute("Lua:IOAVFirstLNKFile" .. L0_0 .. "InContainer")
  mp.set_mpattribute("//Lua:GIOAVFirstLNKFile" .. L0_0 .. "InContainer")
end
return mp.CLEAN
