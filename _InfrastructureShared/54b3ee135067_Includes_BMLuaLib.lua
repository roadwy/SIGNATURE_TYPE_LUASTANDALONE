local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[2]
      L0_0 = L0_0.utf8p1
      if L0_0 ~= nil then
        L0_0 = string
        L0_0 = L0_0.lower
        L1_1 = this_sigattrlog
        L1_1 = L1_1[2]
        L1_1 = L1_1.utf8p1
        L0_0 = L0_0(L1_1)
        L1_1 = mp
        L1_1 = L1_1.SIGATTR_LOG_SZ
        for _FORV_5_ = 1, L1_1 do
          if sigattr_tail[_FORV_5_].attribute == 16470 and string.find(sigattr_tail[_FORV_5_].utf8p2, L0_0, 1, true) ~= nil and sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L0_0) ~= 0 then
            if sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600 > MpCommon.GetCurrentTimeT() or MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600) > 600 then
              return mp.CLEAN
            end
            bm_AddRelatedFileFromCommandLine(L0_0)
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
