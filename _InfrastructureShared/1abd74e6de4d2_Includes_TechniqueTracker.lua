local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.image_path
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = L0_0.image_path
    L1_1 = L1_1(L2_2)
    L2_2 = string
    L2_2 = L2_2.sub
    L3_3 = L1_1
    L4_4 = -15
    L2_2 = L2_2(L3_3, L4_4)
    L3_3 = L2_2
    L2_2 = L2_2.match
    L4_4 = "\\([^\\]+)$"
    L2_2 = L2_2(L3_3, L4_4)
    L3_3 = {}
    L3_3["scriptftp.exe"] = true
    L3_3["sqlagent.exe"] = true
    L3_3["acroinst2.exe"] = true
    L3_3["kagentsilent.exe"] = true
    L3_3["taddmwmi.exe"] = true
    L3_3["madservice.exe"] = true
    L3_3["ccmexec.exe"] = true
    L3_3["gpscript.exe"] = true
    L3_3["mpcmdrun.exe"] = true
    L3_3["mssense.exe"] = true
    L3_3["senseir.exe"] = true
    L4_4 = L3_3[L2_2]
    if L4_4 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = GetRealPidForScenario
    L4_4 = L4_4("CMDHSTR")
    if IsPidExcluded(L4_4) then
      return mp.CLEAN
    end
    if IsDetectionThresholdMet(L4_4) and (IsTacticObservedForPid(L4_4, "remoteservice-target") or IsTacticObservedForPid(L4_4, "wmi_childproc") or IsTechniqueObservedForPid(L4_4, "T1021.006")) then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
