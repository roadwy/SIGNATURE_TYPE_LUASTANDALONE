local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.get_versioninfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.CompanyName
L1_1 = L1_1 and string.lower(L1_1)
if not StringEndsWith(L1_1, ",corporation") then
  return mp.CLEAN
end
return mp.INFECTED
