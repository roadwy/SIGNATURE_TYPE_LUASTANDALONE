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
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FULL
L2_2 = L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE)
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE))
L1_1 = MpCommon
L1_1 = L1_1.QueryPersistContext
L2_2 = L0_0
L1_1 = L1_1(L2_2, "Lua:XOMLDroppedByOffice")
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L2_2 = L2_2(mp.CONTEXT_DATA_PROCESSNAME)
if L2_2 ~= nil and string.lower(L2_2) == "microsoft.workflow.compiler.exe" then
  return mp.INFECTED
end
return mp.CLEAN
