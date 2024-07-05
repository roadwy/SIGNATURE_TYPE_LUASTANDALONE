local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    L0_0 = L0_0(L1_1)
    if L0_0 then
      L1_1 = mp
      L1_1 = L1_1.IsKnownFriendlyFile
      L1_1 = L1_1(L0_0, true, false)
      if L1_1 == true then
        L1_1 = mp
        L1_1 = L1_1.CLEAN
        return L1_1
      end
      L1_1 = string
      L1_1 = L1_1.match
      L1_1 = L1_1(string.lower(this_sigattrlog[1].utf8p1), "\\services\\([^\\]+)\\parameters")
      if not MpCommon.QueryPersistContext(L1_1, "NewServiceCreation") then
        MpCommon.AppendPersistContext(L1_1, "NewServiceCreation", 0)
      end
      if sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L0_0) ~= 0 then
        if sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600 > MpCommon.GetCurrentTimeT() or MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600) > 600 then
          return mp.CLEAN
        end
        bm_AddRelatedFileFromCommandLine(L0_0)
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
