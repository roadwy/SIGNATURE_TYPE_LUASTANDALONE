local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.find(L0_0, "%->raw/%d%d%d_s.txt") then
  mp.set_mpattribute("SCPT:Nemucod_exclusion")
end
return mp.CLEAN
