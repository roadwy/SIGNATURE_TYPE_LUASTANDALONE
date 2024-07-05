local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
  if L1_1 ~= nil then
    L1_1 = L0_0.ppid
    if ({
      ["circuit.exe"] = true
    })[string.lower(L0_0.image_path):match("([^\\]+)$")] then
      return mp.CLEAN
    end
    if IsPidExcluded(L1_1) then
      return mp.CLEAN
    end
    TrackPidAndTechnique(L1_1, "T1021.006", "lolbin_wmic")
    if IsDetectionThresholdMet(L1_1) then
      return mp.INFECTED
    end
    return mp.LOWFI
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
