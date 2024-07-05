local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.sub
L1_1 = L1_1(L0_0, -10)
if L1_1 and string.lower(L1_1) == "\\mshta.exe" then
  return mp.INFECTED
end
return mp.CLEAN
