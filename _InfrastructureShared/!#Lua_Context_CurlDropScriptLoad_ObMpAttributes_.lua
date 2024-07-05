local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
if L0_0 then
  L2_2 = L0_0
  L1_1 = L0_0.lower
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
end
L1_1 = "ScriptDroppedByCurl"
if L0_0 == "wscript.exe" then
  L2_2 = mp
  L2_2 = L2_2.getfilename
  L2_2 = L2_2(mp.FILEPATH_QUERY_LOWERCASE)
  if MpCommon.QueryPersistContext(L2_2, L1_1) then
    mp.set_mpattribute("Lua:Context/CurlDropWscriptLoad")
  end
elseif L0_0 == "cscript.exe" then
  L2_2 = mp
  L2_2 = L2_2.getfilename
  L2_2 = L2_2(mp.FILEPATH_QUERY_LOWERCASE)
  if MpCommon.QueryPersistContext(L2_2, L1_1) then
    mp.set_mpattribute("Lua:Context/CurlDropCscriptLoad")
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
