local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
L0_0 = L0_0.lower
L0_0 = L0_0(L0_0)
if mp.get_mpattribute("BM_RTF_FILE") == true and string.find(L0_0, ".rtf", -4, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
