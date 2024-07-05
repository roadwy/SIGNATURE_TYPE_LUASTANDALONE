local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.sub(L0_0, -14) == "\\component_600" then
  mp.set_mpattribute("Lua:FilCoutFileName.A")
end
return mp.CLEAN
