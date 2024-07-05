local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L2_2 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2))
if L0_0 == "curl.exe" then
  L1_1 = mp
  L1_1 = L1_1.getfilename
  L2_2 = mp
  L2_2 = L2_2.FILEPATH_QUERY_LOWERCASE
  L1_1 = L1_1(L2_2)
  L2_2 = "ScriptDroppedByCurl"
  if not MpCommon.QueryPersistContext(L1_1, L2_2) then
    MpCommon.AppendPersistContext(L1_1, L2_2, 100)
  end
  mp.set_mpattribute("MpDisableCaching")
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
