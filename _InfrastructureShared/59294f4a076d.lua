local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.find(L0_0, "->%(mof%d+%)") then
  mp.set_mpattribute("MofPackedScript")
end
return mp.INFECTED
