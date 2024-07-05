local L0_0, L1_1, L2_2, L3_3
L0_0 = MpCommon
L0_0 = L0_0.AtomicCounterValue
L1_1 = "TriggerSafeBreachResourceScan"
L0_0 = L0_0(L1_1)
if L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_SCANREASON
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.SCANREASON_ONMODIFIEDHANDLECLOSE
if L1_1 ~= L2_2 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
L1_1 = L1_1(L2_2)
if L1_1 ~= true then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_PATH
L3_3 = L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE))
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L3_3 = {
  "\\windows\\temp\\sb%-sim%-temp%-[%w_-]+$",
  "\\appdata\\local\\temp\\sb_[%w_-]+$"
}
if contains(L2_2, L3_3, false) then
  mp.TriggerScanResource("folder", L2_2)
  MpCommon.AtomicCounterSet("TriggerSafeBreachResourceScan", 1, 3600)
  return mp.INFECTED
end
return mp.CLEAN
