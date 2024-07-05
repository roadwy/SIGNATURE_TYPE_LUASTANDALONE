local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0 == nil and #L0_0 < 5 then
  return mp.CLEAN
end
if L0_0:find("setup", 1, true) or L0_0:find("install", 1, true) or L0_0:find("x32", 1, true) or L0_0:find("x64", 1, true) then
  mp.set_mpattribute("Lua:SetupName")
end
return mp.CLEAN
