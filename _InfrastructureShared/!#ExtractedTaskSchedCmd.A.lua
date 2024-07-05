local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 == nil then
  return mp.CLEAN
end
if string.find(L0_0, "[TaskCommand]", 1, true) then
  mp.set_mpattribute("Lua:TaskCommandContext")
  return mp.INFECTED
end
return mp.CLEAN
