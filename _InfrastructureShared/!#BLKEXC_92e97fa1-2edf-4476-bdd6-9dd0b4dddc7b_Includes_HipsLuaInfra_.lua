local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = GetCtxOfficeProc
L0_0 = L0_0()
if L0_0 ~= "productivity" and L0_0 ~= "productivity2" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
L2_2 = GetNonVfoAmsiContentNamePathIfExistOnMachine
L2_2 = L2_2()
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.IsPathExcludedForHipsRule
  L2_2 = L2_2(L1_1, "92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b")
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = GetNonVfoScannedFilePathIfExistOnMachine
L2_2 = L2_2()
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.IsPathExcludedForHipsRule
  L2_2 = L2_2(L1_1, "92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b")
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = nil
L2_2 = GetInvolvedFileInCmdLnIfExistOnMachineAMSI()
if L2_2 ~= nil and mp.IsPathExcludedForHipsRule(L2_2, "92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b") then
  return mp.CLEAN
end
return mp.INFECTED
