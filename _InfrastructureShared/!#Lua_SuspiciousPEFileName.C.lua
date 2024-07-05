local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:match("(.+\\)([^\\]+)$") == nil then
  return mp.CLEAN
end
if L0_0:match("(.+\\)([^\\]+)$"):len() > 14 and L0_0:match("(.+\\)([^\\]+)$"):len() < 40 and L0_0:match("(.+\\)([^\\]+)$"):find("^track_%d+%.exe") == 1 then
  mp.set_mpattribute("Lua:SuspiciousPEFileName.C")
end
return mp.CLEAN
