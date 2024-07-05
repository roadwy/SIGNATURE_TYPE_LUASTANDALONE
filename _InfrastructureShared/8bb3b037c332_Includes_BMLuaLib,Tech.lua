local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 100000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0, L1_1 = nil, nil
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L0_0 = L2_2.utf8p1
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L1_1 = L2_2.utf8p1
  end
end
if L0_0 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if L1_1 == L0_0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = StringEndsWith
L3_3 = L1_1
L4_4 = ".exe"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.ContextualExpandEnvironmentVariables
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L0_0 = L2_2
L2_2 = mp
L2_2 = L2_2.ContextualExpandEnvironmentVariables
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L3_3 = L1_1
L2_2 = L1_1.match
L4_4 = "(.+[\\/])"
L2_2 = L2_2(L3_3, L4_4)
L4_4 = L0_0
L3_3 = L0_0.match
L3_3 = L3_3(L4_4, "(.+[\\/])")
if L2_2 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = L2_2.lower
L4_4 = L4_4(L2_2)
if L4_4 ~= L3_3:lower() then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = {
  "program files",
  "\\winsxs\\",
  "\\windows defender\\platform\\",
  ":\\windows\\system32\\",
  ":\\windows\\syswow64\\",
  "\\appdata\\local\\apps\\",
  ":\\windows\\temp\\{a38e140d-9716-4e18-bb65-fb842405683d}\\",
  ":\\windows\\temp\\{02df9211-42ce-4b27-a029-08177b5e5c13}\\",
  "\\sub100_phase2_code\\pc_sim\\bin\\debug\\"
}
if contains(L0_0, L4_4) then
  return mp.CLEAN
end
if checkFileLastWriteTime(L0_0, 3600) == false and checkFileLastWriteTime(L1_1, 3600) == false and not mp.IsKnownFriendlyFile(L1_1, true, false) then
  bm.add_related_file(L1_1)
  bm.add_related_string("ExePath", L0_0, bm.RelatedStringBMReport)
  bm.add_related_string("DllPath", L1_1, bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN
