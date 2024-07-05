local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L3_3 = L0_0
L5_5 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L2_2(L3_3))
L0_0 = L1_1
L1_1 = string
L1_1 = L1_1.lower
L2_2 = MpCommon
L2_2 = L2_2.ExpandEnvironmentVariables
L3_3 = "%WINDIR%\\SYSTEM32\\"
L5_5 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L2_2(L3_3))
L3_3 = L0_0
L2_2 = L0_0.find
L4_4 = L1_1
L5_5 = 1
L2_2 = L2_2(L3_3, L4_4, L5_5, true)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {}
L2_2["srdelayed.exe"] = true
L2_2["poqexec.exe"] = true
L2_2["setupcl.exe"] = true
L2_2["register-cimprovider2.exe"] = true
L2_2["msiexec.exe"] = true
L3_3 = MpCommon
L3_3 = L3_3.GetOriginalFileName
L4_4 = L0_0
L3_3 = L3_3(L4_4)
if L3_3 ~= "" and L3_3 ~= nil then
  L4_4 = bm
  L4_4 = L4_4.add_related_string
  L5_5 = "OriginalFileName"
  L4_4(L5_5, L3_3, bm.RelatedStringBMReport)
  L4_4 = L2_2[L3_3]
  if L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = mp
  L4_4 = L4_4.INFECTED
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.IsKnownFriendlyFile
L5_5 = L0_0
L4_4 = L4_4(L5_5, false, true)
if L4_4 == false then
  L4_4 = bm
  L4_4 = L4_4.add_related_string
  L5_5 = "FriendlyFile"
  L4_4(L5_5, "false", bm.RelatedStringBMReport)
end
L4_4 = sysio
L4_4 = L4_4.GetPEVersionInfo
L5_5 = L0_0
L4_4 = L4_4(L5_5)
if L4_4 then
  L5_5 = L4_4.OriginalFilename
  L5_5 = L5_5 and L4_4.OriginalFilename
elseif L5_5 == "" then
  L5_5 = bm
  L5_5 = L5_5.add_related_string
  L5_5("OriginalFileName_PeParser", "null", bm.RelatedStringBMReport)
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
L5_5 = string
L5_5 = L5_5.lower
L5_5 = L5_5(L4_4.OriginalFilename)
MpCommon.SetOriginalFileName(L0_0, L5_5)
bm.add_related_string("OriginalFileName_PeParser", L5_5, bm.RelatedStringBMReport)
if L2_2[L5_5] then
  return mp.CLEAN
end
return mp.INFECTED
