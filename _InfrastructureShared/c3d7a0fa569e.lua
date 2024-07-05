local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.image_path
if L1_1 ~= nil then
  L1_1 = L0_0.image_path
elseif L1_1 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0.image_path)
if L1_1 ~= nil and string.find(L1_1, "/usr/bin/dpkg", 1, true) == 1 then
  return mp.CLEAN
end
return mp.INFECTED
