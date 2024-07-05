local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == "" or L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "trustedinstaller binpath\\s*=([^&]+)"
L2_2 = L2_2(L3_3, L4_4)
L3_3 = string
L3_3 = L3_3.find
L4_4 = L2_2
L5_5 = "\\servicing\\trustedinstaller.exe"
L6_6 = 1
L3_3 = L3_3(L4_4, L5_5, L6_6, true)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.GetParentProcInfo
L3_3 = L3_3()
if L3_3 ~= nil then
  L4_4 = L3_3.image_path
  if L4_4 == "" or L4_4 == nil then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = string
  L5_5 = L5_5.lower
  L6_6 = L4_4
  L5_5 = L5_5(L6_6)
  L4_4 = L5_5
  L5_5 = string
  L5_5 = L5_5.find
  L6_6 = L4_4
  L5_5 = L5_5(L6_6, ":\\lenovoquickfix\\", 1, true)
  if L5_5 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = L3_3.ppid
  if L5_5 == "" or L5_5 == nil then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = mp
  L6_6 = L6_6.GetProcessCommandLine
  L6_6 = L6_6(L5_5)
  if L6_6 == "" or L6_6 == nil then
    return mp.CLEAN
  end
  L6_6 = string.lower(L6_6)
  if string.find(L6_6, ":\\lenovoquickfix\\", 1, true) then
    return mp.CLEAN
  end
  L2_2 = string.match(L6_6, "trustedinstaller\\sbinpath\\s*=([^&]+)")
  if string.find(L2_2, "\\servicing\\trustedinstaller.exe", 1, true) then
    return mp.CLEAN
  end
end
L4_4 = mp
L4_4 = L4_4.INFECTED
return L4_4
