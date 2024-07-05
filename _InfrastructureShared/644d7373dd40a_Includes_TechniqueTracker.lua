local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L0_0.image_path
  L3_3 = L2_2(L3_3, -8)
  L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3, -8))
  if L1_1 == "w3wp.exe" then
    L1_1 = L0_0.ppid
    if L1_1 == "" or L1_1 == nil then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = mp
    L2_2 = L2_2.GetProcessCommandLine
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
    if L2_2 == "" or L2_2 == nil then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(L2_2)
    L2_2 = L3_3
    L3_3 = string
    L3_3 = L3_3.find
    L3_3 = L3_3(L2_2, "-ap \"msexchangeecpapppool\"", 1, true)
    if not L3_3 then
      L3_3 = string
      L3_3 = L3_3.find
      L3_3 = L3_3(L2_2, "-ap \"msexchangeowaapppool\"", 1, true)
      if not L3_3 then
        L3_3 = string
        L3_3 = L3_3.find
        L3_3 = L3_3(L2_2, "-ap \"msexchangeoabapppool\"", 1, true)
        if not L3_3 then
          L3_3 = string
          L3_3 = L3_3.find
          L3_3 = L3_3(L2_2, "-ap \"msexchangeowacalendarapppool\"", 1, true)
          if not L3_3 then
            L3_3 = string
            L3_3 = L3_3.find
            L3_3 = L3_3(L2_2, "-ap \"msexchangeservicesapppool\"", 1, true)
            if not L3_3 then
              L3_3 = string
              L3_3 = L3_3.find
              L3_3 = L3_3(L2_2, "-ap \"msexchangeautodiscoverapppool\"", 1, true)
              if not L3_3 then
                L3_3 = string
                L3_3 = L3_3.find
                L3_3 = L3_3(L2_2, "-ap \"msexchangemapifrontendapppool\"", 1, true)
              end
            end
          end
        end
      end
    elseif L3_3 then
      L3_3 = TrackPidAndTechnique
      L3_3(L1_1, "T1505.003", "webshell_parent", 604800)
      L3_3 = mp
      L3_3 = L3_3.INFECTED
      return L3_3
    end
    L3_3 = string
    L3_3 = L3_3.find
    L3_3 = L3_3(L2_2, "-ap \"msexchangepowershellapppool\"", 1, true)
    if L3_3 then
      L3_3 = mp
      L3_3 = L3_3.GetScannedPPID
      L3_3 = L3_3()
      if MpCommon.GetProcessElevationAndIntegrityLevel(L3_3) and MpCommon.GetProcessElevationAndIntegrityLevel(L3_3).IntegrityLevel >= MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
        TrackPidAndTechnique(L1_1, "T1505.003", "webshell_parent", 604800)
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
