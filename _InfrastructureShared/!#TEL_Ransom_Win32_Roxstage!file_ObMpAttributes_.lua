local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSDEVICEPATH
L1_1 = L1_1(L2_2)
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L2_2 = L2_2(L1_1)
if L2_2 == nil then
  return mp.CLEAN
end
L2_2 = L2_2 .. "\\" .. L0_0
if not MpCommon.QueryPersistContext(L2_2, "CLOUD:RoxstageBlockAccess") then
  return mp.CLEAN
end
return mp.INFECTED
