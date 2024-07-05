local L0_0, L1_1, L2_2, L3_3
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p2
end
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L0_0 = L1_1.utf8p2
end
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L0_0 = L1_1.utf8p2
end
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[4]
  L0_0 = L1_1.utf8p2
end
L1_1 = this_sigattrlog
L1_1 = L1_1[5]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[5]
  L0_0 = L1_1.utf8p2
end
L1_1 = this_sigattrlog
L1_1 = L1_1[6]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[6]
  L0_0 = L1_1.utf8p2
end
L1_1 = this_sigattrlog
L1_1 = L1_1[7]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[7]
  L0_0 = L1_1.utf8p2
end
L1_1 = this_sigattrlog
L1_1 = L1_1[8]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[8]
  L0_0 = L1_1.utf8p2
end
L1_1 = this_sigattrlog
L1_1 = L1_1[9]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[9]
  L0_0 = L1_1.utf8p2
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = string
L1_1 = L1_1.lower
L2_2 = MpCommon
L2_2 = L2_2.ExpandEnvironmentVariables
L3_3 = "%WINDIR%\\SYSTEM32\\"
L3_3 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3))
L3_3 = L0_0
L2_2 = L0_0.find
L2_2 = L2_2(L3_3, L1_1, 1, true)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.IsKnownFriendlyFile
L3_3 = L0_0
L2_2 = L2_2(L3_3, false, true)
if L2_2 == false then
  L2_2 = bm
  L2_2 = L2_2.add_related_string
  L3_3 = "FriendlyFile"
  L2_2(L3_3, "false", bm.RelatedStringBMReport)
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = sysio
L2_2 = L2_2.GetPEVersionInfo
L3_3 = L0_0
L2_2 = L2_2(L3_3)
if L2_2 then
  L3_3 = L2_2.OriginalFilename
  L3_3 = L3_3 and L2_2.OriginalFilename
elseif L3_3 == "" then
  L3_3 = bm
  L3_3 = L3_3.add_related_string
  L3_3("OriginalFileName_PeParser", "null", bm.RelatedStringBMReport)
  L3_3 = mp
  L3_3 = L3_3.INFECTED
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L3_3 = L3_3(L2_2.OriginalFilename)
MpCommon.SetOriginalFileName(L0_0, L3_3)
if L3_3 == L0_0:match("(%w+%.exe)$") then
  return mp.CLEAN
end
if L3_3 == "register-cimprovider2.exe" and L0_0:match("(%w+%.exe)$") == "register-cimprovider.exe" then
  return mp.CLEAN
end
bm.add_related_string("OriginalFileName_PeParser", L3_3, bm.RelatedStringBMReport)
return mp.INFECTED
