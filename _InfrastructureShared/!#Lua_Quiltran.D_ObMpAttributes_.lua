local L0_0, L1_1, L2_2, L3_3
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
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L3_3 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2, L3_3))
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESSNAME
L3_3 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3))
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.set_mpattribute
L3_3 = "MpDisableCaching"
L2_2(L3_3)
L2_2 = {}
L3_3 = table
L3_3 = L3_3.insert
L3_3(L2_2, L0_0)
L3_3 = MpCommon
L3_3 = L3_3.SetPersistContextNoPath
L3_3("Lua:MSIL/Quiltran.D", L2_2, 0)
if L0_0 ~= L1_1 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.get_contextdata
L3_3 = L3_3(mp.CONTEXT_DATA_PROCESS_PPID)
if L3_3 ~= nil then
  MpCommon.RequestSmsOnProcess(L3_3, MpCommon.SMS_SCAN_MED)
end
return mp.INFECTED
