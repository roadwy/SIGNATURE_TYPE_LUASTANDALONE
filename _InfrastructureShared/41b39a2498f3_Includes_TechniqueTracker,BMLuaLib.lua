local L0_0, L1_1
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
    L1_1 = TrackPidAndTechniqueBM
    L1_1("BM", "T1218.011", "Proxy_Exec")
    L1_1 = extractDllForRegproc
    L1_1 = L1_1(L0_0)
    if L1_1 then
      L1_1 = mp.ContextualExpandEnvironmentVariables(L1_1)
      if sysio.IsFileExists(L1_1) and sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L1_1) ~= 0 and (sysio.GetFileLastWriteTime(L1_1) / 10000000 - 11644473600 > MpCommon.GetCurrentTimeT() or MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L1_1) / 10000000 - 11644473600) > 3600) then
        bm.add_related_file(L1_1)
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
