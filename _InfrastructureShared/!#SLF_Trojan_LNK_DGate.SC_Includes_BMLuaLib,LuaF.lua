local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetLnkInfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.RelativePath
L1_1 = L1_1 or nil
L2_2 = contains
L3_3 = L1_1
L2_2 = L2_2(L3_3, "..\\..\\")
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = StringEndsWith
L3_3 = L1_1
L2_2 = L2_2(L3_3, "\\cmd.exe")
if not L2_2 then
  L2_2 = StringEndsWith
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, "\\powershell.exe")
  if not L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = L0_0.IconIndex
L2_2 = L2_2 or nil
if L2_2 ~= 0 and L2_2 ~= 1 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L0_0.IconLocation
L3_3 = L3_3 or nil
if L3_3 ~= nil and StringEndsWith(L3_3, ".pdf") then
  return mp.INFECTED
end
return mp.CLEAN
