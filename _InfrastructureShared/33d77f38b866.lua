local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.match
  L1_1 = L1_1(L0_0.image_path, "\\([^\\]+)$")
  L1_1 = string.lower(L1_1)
  if L1_1 == "msiexec.exe" then
    return mp.CLEAN
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
