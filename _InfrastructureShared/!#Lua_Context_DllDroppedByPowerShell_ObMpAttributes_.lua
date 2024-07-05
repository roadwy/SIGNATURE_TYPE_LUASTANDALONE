local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
if L0_0 == "powershell.exe" then
  L1_1 = mp
  L1_1 = L1_1.getfilename
  L2_2 = mp
  L2_2 = L2_2.FILEPATH_QUERY_LOWERCASE
  L1_1 = L1_1(L2_2)
  L2_2 = "DllDroppedByPowerShell"
  if not MpCommon.QueryPersistContext(L1_1, L2_2) then
    MpCommon.AppendPersistContext(L1_1, L2_2, 100)
  end
  mp.set_mpattribute("MpDisableCaching")
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
