local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(string.sub(L0_0.image_path, -12))
if L1_1 ~= "wmiprvse.exe" or L1_1 == "explorer.exe" or string.sub(L1_1, -7) == "mmc.exe" then
  return mp.CLEAN
end
if versioning.GetLocaleIdentifier() == 1049 then
  return mp.LOWFI
end
return mp.CLEAN
