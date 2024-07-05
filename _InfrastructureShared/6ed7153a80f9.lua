local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetParentProcInfo
L1_1 = L1_1()
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1.image_path
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L2_2.find
L3_3 = L3_3(L2_2, "\\wmiprvse.exe")
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.GetProcessCommandLine
L3_3 = L3_3(L0_0)
if not L3_3 or #L3_3 <= 8 then
  return mp.CLEAN
end
if string.find(L3_3, "/Q ", 1, true) and string.find(L3_3, "/c ", 1, true) and not string.find(L3_3, "/Q /D ", 1, true) and not string.find(L3_3, "/Q /c netstat -anop TCP 1>", 1, true) and not string.find(L3_3, "/U /Q ", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
