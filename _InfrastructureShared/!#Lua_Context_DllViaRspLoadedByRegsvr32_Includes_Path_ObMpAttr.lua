local L0_0, L1_1, L2_2, L3_3
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L3_3 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2))
if L0_0 ~= "odbcconf.exe" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_LOWERCASE
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = mp
L3_3 = L3_3.bitor
L3_3 = L3_3(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)
L2_2 = L2_2(L3_3, L3_3(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
L3_3 = normalize_path
L3_3 = L3_3(L1_1)
L1_1 = L3_3
L3_3 = MpCommon
L3_3 = L3_3.QueryPersistContext
L3_3 = L3_3(L1_1, "DllFromRsp")
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3("Lua:Context/DllViaRspRegsvrLoad")
end
L3_3 = MpCommon
L3_3 = L3_3.GetPersistContextNoPath
L3_3 = L3_3("DllFromOdbcAction")
for _FORV_7_, _FORV_8_ in ipairs(L3_3) do
  if _FORV_8_:find(L2_2, 1, true) or _FORV_8_:find(L1_1, 1, true) then
    mp.set_mpattribute("Lua:Context/DllViaOdbcconfLoad")
  end
end
return mp.CLEAN
