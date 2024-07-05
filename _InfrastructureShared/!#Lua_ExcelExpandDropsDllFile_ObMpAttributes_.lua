local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.FILEPATH_QUERY_LOWERCASE
L0_0 = L0_0(L1_1)
L1_1 = "CabDroppedByExcel"
if not MpCommon.QueryPersistContext(L0_0, L1_1) then
  MpCommon.AppendPersistContext(L0_0, L1_1, 100)
end
mp.set_mpattribute("MpDisableCaching")
return mp.INFECTED
