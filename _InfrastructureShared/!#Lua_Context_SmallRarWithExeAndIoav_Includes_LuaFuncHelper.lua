local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.IOAVGetDownloadUrl
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if L1_1 > 20971520 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L2_2 = L2_2(L3_3)
L3_3 = "Lua:Context/SmallRarWithExeAndIoav"
mp.set_mpattribute("Lua:Context/SmallRarWithExeAndIoav")
if not MpCommon.QueryPersistContext(L2_2, L3_3) then
  MpCommon.AppendPersistContext(L2_2, L3_3, 300)
end
mp.set_mpattribute("MpDisableCaching")
return mp.INFECTED
