local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 200000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0.command_line
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.find
L2_2 = L2_2(L1_1, "\\microsoft visual studio\\", 1, true)
if not L2_2 then
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L1_1, "\\microsoft service fabric\\", 1, true)
  if not L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L1_1, "\\steam\\", 1, true)
    if not L2_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L2_2 = L2_2(L1_1, "\\git\\", 1, true)
      if not L2_2 then
        L2_2 = string
        L2_2 = L2_2.find
        L2_2 = L2_2(L1_1, "\\teams\\", 1, true)
        if not L2_2 then
          L2_2 = string
          L2_2 = L2_2.find
          L2_2 = L2_2(L1_1, "\\netcoreapp", 1, true)
          if not L2_2 then
            L2_2 = string
            L2_2 = L2_2.find
            L2_2 = L2_2(L1_1, "\\iis express\\", 1, true)
          end
        end
      end
    end
  end
elseif L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L0_0.ppid
if IsTechniqueObservedForPid(L2_2, "T1055.002") then
  if GetTaintLevelHR() == nil or GetTaintLevelHR() ~= "Medium" and GetTaintLevelHR() ~= "High" then
    return mp.CLEAN
  end
  if IsDetectionThresholdMet("BM") then
    return mp.INFECTED
  end
end
return mp.CLEAN
