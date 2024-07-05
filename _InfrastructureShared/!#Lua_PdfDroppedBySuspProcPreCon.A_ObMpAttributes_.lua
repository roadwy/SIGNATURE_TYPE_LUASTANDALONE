local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L2_2 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2))
if L0_0 ~= "explorer.exe" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = "global_marker"
L2_2 = "big_lnk_file_with_ps"
if MpCommon.QueryPersistContextNoPath(L1_1, L2_2) then
  return mp.CLEAN
end
MpCommon.AppendPersistContextNoPath(L1_1, L2_2, 30)
return mp.INFECTED
