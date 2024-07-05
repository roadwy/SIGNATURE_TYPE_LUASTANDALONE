local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = false
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESSDEVICEPATH
L7_7 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L2_2(L3_3))
L2_2 = string
L2_2 = L2_2.lower
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_PROCESSNAME
L7_7 = L3_3(L4_4)
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L3_3(L4_4))
L3_3 = string
L3_3 = L3_3.find
L4_4 = L1_1
L5_5 = "\\program files\\7-zip"
L6_6 = 1
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
L3_3 = L3_3 ~= nil or L3_3 ~= nil
L4_4 = L3_3 and L4_4 == "7z" and (L2_2 == "7z.exe" or L2_2 == "7za.exe" or L2_2 == "7zfm.exe" or L2_2 == "7zg.exe" or L4_4 ~= nil or L4_4 ~= nil)
L5_5 = string
L5_5 = L5_5.find
L6_6 = L1_1
L7_7 = "\\program files\\winrar"
L5_5 = L5_5(L6_6, L7_7, 1, true)
L5_5 = L5_5 ~= nil or L5_5 ~= nil
L6_6 = L5_5 and (L2_2 == "rar.exe" or L2_2 == "unrar.exe" or L2_2 == "winrar.exe")
if L4_4 or L6_6 then
  L7_7 = MpCommon
  L7_7 = L7_7.PathToWin32Path
  L7_7 = L7_7(L1_1 .. "\\" .. L2_2)
  if mp.IsKnownFriendlyFile(L7_7, true, true) then
    return true
  end
end
L7_7 = false
return L7_7
