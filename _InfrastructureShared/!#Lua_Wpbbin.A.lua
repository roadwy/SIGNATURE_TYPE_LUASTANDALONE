local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("Lua:Wpbbin.A!cert")
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:len() < 28 or string.sub(L0_0, -28) ~= "\\windows\\system32\\wpbbin.exe" then
  return mp.CLEAN
end
return mp.INFECTED
