local L0_0, L1_1
function L0_0(A0_2)
  local L1_3, L2_4
  if not A0_2 then
    L1_3 = nil
    return L1_3
  end
  L1_3 = string
  L1_3 = L1_3.len
  L2_4 = A0_2
  L1_3 = L1_3(L2_4)
  L2_4 = string
  L2_4 = L2_4.reverse
  L2_4 = L2_4(A0_2)
  if L2_4 and string.find(L2_4, "\\", 1, true) then
    L2_4 = string.sub(A0_2, 1, L1_3 - string.find(L2_4, "\\", 1, true) + 1)
    return L2_4
  end
  return nil
end
GetFolderPathFromFile = L0_0
L0_0 = MpDetection
L0_0 = L0_0.GetCurrentThreat
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.match
L1_1 = L1_1(L0_0.Name, "Kilim")
if L1_1 then
  L1_1 = nil
  for _FORV_5_, _FORV_6_ in pairs(L0_0.Resources) do
    if _FORV_6_.Schema == "file" then
      L1_1 = GetFolderPathFromFile(_FORV_6_.Path)
      if L1_1 and sysio.IsFolderExists(L1_1) then
        MpDetection.ScanResource("folder://" .. L1_1)
      end
    end
  end
end
