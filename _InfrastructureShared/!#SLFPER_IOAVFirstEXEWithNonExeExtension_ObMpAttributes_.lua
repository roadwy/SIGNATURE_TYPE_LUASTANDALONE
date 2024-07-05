local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = mp
  L1_1 = L1_1.getfilename
  L2_2 = L1_1()
  L0_0 = L0_0(L1_1, L2_2, L1_1())
  L2_2 = L0_0
  L1_1 = L0_0.match
  L2_2 = L1_1(L2_2, "(.+\\)([^\\]+)$")
  if L2_2 == nil then
    return mp.CLEAN
  end
  if (L2_2:len() < 4 or string.sub(L2_2, -4) ~= ".exe") and L2_2:find(".exe->", 1, true) == nil then
    mp.set_mpattribute("//GIOAVFirstEXEWithNonExeExtension")
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
