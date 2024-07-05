local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L0_0 = L2_2.utf8p2
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L1_1 = L2_2.utf8p2
  end
end
L2_2 = {}
L2_2[".one"] = true
L3_3 = bm_AddRelatedFileFromCommandLine
L7_7 = 6
L3_3(L4_4, L5_5, L6_6, L7_7)
if L0_0 ~= nil then
  L3_3 = mp
  L3_3 = L3_3.GetExecutablesFromCommandLine
  L3_3 = L3_3(L4_4)
  for L7_7, L8_8 in L4_4(L5_5) do
    L8_8 = mp.ContextualExpandEnvironmentVariables(L8_8)
    if sysio.IsFileExists(L8_8) and checkFileLastWriteTime(L8_8, 600) == false then
      bm.add_threat_file(L8_8)
      return mp.INFECTED
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
