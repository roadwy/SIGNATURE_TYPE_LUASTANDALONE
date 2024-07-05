local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L2_2 = L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE)
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE))
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L1_1["avira.oe.nativecore.dll"] = "AviraOeNativeCoreDll"
L1_1["wsc.dll"] = "AvgWscDll"
L2_2 = L1_1[L0_0]
if L2_2 then
  mp.set_mpattribute(string.format("Lua:FileName%s", L2_2))
end
return mp.CLEAN
