local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0.image_path)
  if string.find(L1_1, ":\\Windows\\system32\\cscript.exe", 2, true) then
    return mp.CLEAN
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
