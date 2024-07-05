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
      L2_2 = StringEndsWith
      L3_3 = L0_0
      L2_2 = L2_2(L3_3, "\\ntds.dit")
      if L2_2 then
        L3_3 = L0_0
        L2_2 = L0_0.find
        L2_2 = L2_2(L3_3, "\\harddiskvolumeshadowcopy", 1, true)
        if L2_2 then
          L2_2 = mp
          L2_2 = L2_2.CLEAN
          return L2_2
        end
        L2_2 = StringStartsWith
        L3_3 = L1_1
        L2_2 = L2_2(L3_3, "\\\\.\\")
        if not L2_2 then
          L2_2 = StringStartsWith
          L3_3 = L1_1
          L2_2 = L2_2(L3_3, "\\\\?\\")
          if not L2_2 then
            L3_3 = L1_1
            L2_2 = L1_1.find
            L2_2 = L2_2(L3_3, "\\device\\", 1, true)
            if not L2_2 then
              L3_3 = L1_1
              L2_2 = L1_1.find
              L2_2 = L2_2(L3_3, "\\volume{", 1, true)
            end
          end
        else
          if L2_2 then
            L2_2 = pcall
            L3_3 = MpCommon
            L3_3 = L3_3.PathToWin32Path
            L3_3 = L2_2(L3_3, L1_1)
            L1_1 = L3_3
            _ = L2_2
        end
        else
          L2_2 = StringStartsWith
          L3_3 = L1_1
          L2_2 = L2_2(L3_3, "%")
          if L2_2 then
            L2_2 = pcall
            L3_3 = mp
            L3_3 = L3_3.ContextualExpandEnvironmentVariables
            L3_3 = L2_2(L3_3, L1_1)
            L1_1 = L3_3
            _ = L2_2
          end
        end
        if L1_1 ~= nil then
          L3_3 = L1_1
          L2_2 = L1_1.match
          L3_3 = L2_2(L3_3, "^\\\\(.-)\\(.+)$")
          if L2_2 ~= nil and L3_3 ~= nil then
            if StringStartsWith(L3_3, "c$\\") or StringStartsWith(L3_3, "admin$\\") then
              AddPidSpecificTechniqueAndTactic("BM", "T1021.002", "ntdsexfil_to_adminshares")
            end
            AddPidSpecificTechniqueAndTactic("BM", "T1020", "exfil_to_networkshare")
            AppendToRollingQueue("SuspExfilServer", L2_2, nil, 5000)
          end
          AppendToRollingQueue("SuspNtdsExfilPath", L1_1, nil, 5000)
          TrackPidAndTechniqueBM("BM", "T1003.003", "ntdsexfil_from_shadowcopy")
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
