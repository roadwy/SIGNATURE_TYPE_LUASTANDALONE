local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.utf8p2
    if L0_0 ~= nil then
      L0_0 = string
      L0_0 = L0_0.lower
      L1_1 = this_sigattrlog
      L1_1 = L1_1[1]
      L1_1 = L1_1.utf8p1
      L0_0 = L0_0(L1_1)
      L1_1 = string
      L1_1 = L1_1.lower
      L2_2 = this_sigattrlog
      L2_2 = L2_2[1]
      L2_2 = L2_2.utf8p2
      L1_1 = L1_1(L2_2)
      L3_3 = L1_1
      L2_2 = L1_1.match
      L2_2 = L2_2(L3_3, "remoteip:(.-):?%d?%d?%d?%d?%d?;?$")
      if L2_2 and L0_0 ~= "" then
        L3_3 = AppendToRollingQueue
        L3_3("SuspAttackServer", L2_2, "From:FepyDropper.A", 5000)
        L3_3 = string
        L3_3 = L3_3.lower
        L3_3 = L3_3(MpCommon.PathToWin32Path(L0_0))
        L0_0 = L3_3
        L3_3 = {
          "T1570:remote_dropped_FePyDll",
          "T1021.002:remote_dropped_FePyDll"
        }
        TrackFileAndTechnique(L0_0, L3_3)
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
