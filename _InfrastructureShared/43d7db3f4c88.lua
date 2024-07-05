local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.gsub
L3_3 = string
L3_3 = L3_3.lower
L3_3 = L3_3(L1_1)
L2_2 = L2_2(L3_3, "%^", "")
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L2_2 = L2_2(L3_3, "win32_shadowcopy).delete() && cmd /c echo %", 1, true)
if not L2_2 then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, "-enablecontrolledfolderaccess 0 && cmd /c echo %", 1, true)
elseif L2_2 then
  L2_2 = mp
  L2_2 = L2_2.GetParentProcInfo
  L2_2 = L2_2()
  if L2_2 ~= nil then
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(L2_2.image_path)
    if string.find(L3_3, "\\windows\\system32\\", 1, true) and L3_3:match("([^\\]+)$") == "dllhost.exe" then
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
