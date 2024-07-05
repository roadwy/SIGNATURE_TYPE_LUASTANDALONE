local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.image_path
  if L1_1 ~= nil then
    L1_1 = GetRealPidForScenario
    L1_1 = L1_1("CMDHSTR")
    if IsPidExcluded(L1_1) then
      return mp.CLEAN
    end
    if ({
      ["ccmexec.exe"] = true,
      ["gpscript.exe"] = true,
      ["mpcmdrun.exe"] = true,
      ["mssense.exe"] = true,
      ["senseir.exe"] = true
    })[string.lower(L0_0.image_path:match("([^\\]+)$"))] then
      return mp.CLEAN
    end
    if IsDetectionThresholdMet(L1_1) and (IsTacticObservedForPid(L1_1, "remoteservice-target") or IsTacticObservedForPid(L1_1, "wmi_childproc") or IsTechniqueObservedForPid(L1_1, "T1021.006")) then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.LOWFI
return L1_1
