local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
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
    L0_0 = L2_2.utf8p2
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L1_1 = L2_2.ppid
  end
end
if L0_0 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.GetExecutablesFromCommandLine
  L2_2 = L2_2(L3_3)
  for L6_6, L7_7 in L3_3(L4_4) do
    L7_7 = mp.ContextualExpandEnvironmentVariables(L7_7)
    if sysio.IsFileExists(L7_7) and string.find(string.lower(L7_7), "javaw.exe") == nil then
      bm.add_threat_file(L7_7)
    end
  end
end
if L1_1 ~= nil then
  L2_2 = bm
  L2_2 = L2_2.add_threat_process
  L2_2(L3_3)
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
