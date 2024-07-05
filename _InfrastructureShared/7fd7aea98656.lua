local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0.image_path)
  if string.find(L1_1, "\\windows\\system32\\services.exe", 1, true) then
    if versioning.IsSeville() then
      return mp.INFECTED
    end
    return mp.LOWFI
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
