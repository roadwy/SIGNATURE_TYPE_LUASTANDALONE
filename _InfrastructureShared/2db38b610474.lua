local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
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
    L0_0 = L1_1.utf8p2
    L1_1 = mp
    L1_1 = L1_1.GetExecutablesFromCommandLine
    L1_1 = L1_1(L2_2)
    for L5_5, L6_6 in L2_2(L3_3) do
      L6_6 = mp.ContextualExpandEnvironmentVariables(L6_6)
      if sysio.IsFileExists(L6_6) and string.sub(L6_6, -12) ~= "regsvr32.exe" and sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L6_6) ~= 0 and MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L6_6) / 10000000 - 11644473600) <= 7200 then
        bm.add_related_file(L6_6)
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1