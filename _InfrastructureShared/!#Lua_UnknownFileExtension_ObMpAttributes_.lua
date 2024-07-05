local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
L1_1 = L0_0
L0_0 = L0_0.lower
L0_0 = L0_0(L1_1)
L1_1 = L0_0.match
L1_1 = L1_1(L0_0, "(%.[^.]+)$")
if L1_1 == nil then
  L1_1 = "" or L1_1
end
if L1_1 ~= "" and mp.GetExtensionClass(L1_1) == 0 then
  return mp.INFECTED
end
return mp.CLEAN
