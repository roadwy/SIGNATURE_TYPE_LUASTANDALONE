local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.GetExecutablesFromCommandLine
  L1_1 = L1_1(L2_2)
  for L5_5, L6_6 in L2_2(L3_3) do
    L6_6 = mp.ContextualExpandEnvironmentVariables(L6_6)
    if sysio.IsFileExists(L6_6) then
      if mp.IsKnownFriendlyFile(L6_6, true, false) then
        mp.ReportLowfi(L6_6, 1394183950)
      else
        TrackFileAndTechnique(L6_6, "T1543.003:exec_service_binary", 1000)
        mp.ReportLowfi(L6_6, 3656319915)
      end
      bm.add_related_file(L6_6)
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
