local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    L2_2 = L1_1
    L1_1 = L1_1.lower
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[2]
      L1_1 = L1_1.utf8p2
      L2_2 = L1_1
      L1_1 = L1_1.lower
      L1_1 = L1_1(L2_2)
      L0_0 = L1_1
    end
  end
end
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5
}
L2_2 = "alexansisplugin"
L3_3 = "zzzzinvokemanagedcustomactionoutofproc"
L2_2 = contains
L3_3 = L0_0
L2_2 = L2_2(L3_3, L4_4)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if not L0_0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = contains
L3_3 = L0_0
L7_7 = "%userprofile%"
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {L3_3, L4_4}
L3_3 = "(?:rundll32|regsvr32)(?:.exe)?\\s+\\w:\\\\(?:programdata|users\\\\public)\\\\[^\\\\]+\\.\\w{2,4}\\s*[,\\w$]+"
L3_3 = false
for L7_7, L8_8 in L4_4(L5_5) do
  L9_9 = MpCommon
  L9_9 = L9_9.StringRegExpSearch
  L7_7, L9_9 = L8_8, L9_9(L8_8, L0_0)
  L3_3 = L9_9
  if L3_3 then
    L9_9 = extractDllForRegproc
    L9_9 = L9_9(L0_0)
    if L9_9 and checkFileLastWriteTime(L9_9, 3600) == false and mp.IsKnownFriendlyFile(L9_9, true, false) == false then
      bm.add_threat_file(L9_9)
    end
    return mp.INFECTED
  end
end
return L4_4
