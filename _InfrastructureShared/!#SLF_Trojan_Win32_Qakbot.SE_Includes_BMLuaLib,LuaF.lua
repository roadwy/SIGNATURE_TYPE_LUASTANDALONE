local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetLnkInfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.Arguments
if not L1_1 then
  L1_1 = L0_0.RelativePath
  L1_1 = L1_1 or nil
end
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L0_0.IconLocation
L2_2 = L2_2 or nil
if L2_2 == nil or not contains(L2_2, {
  "zipfldr.dll",
  "shell32.dll"
}) then
  return mp.CLEAN
end
if contains(L1_1, {".js", ".cmd"}) and contains(L1_1, "..\\..\\") then
  return mp.INFECTED
end
return mp.CLEAN
