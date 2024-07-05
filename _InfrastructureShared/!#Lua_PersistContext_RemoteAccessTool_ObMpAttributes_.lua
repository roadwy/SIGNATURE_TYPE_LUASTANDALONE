local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or #L0_0 <= 3 then
  return mp.CLEAN
end
if not MpCommon.QueryPersistContext(L0_0, "RemoteAccessTool") then
  MpCommon.AppendPersistContext(L0_0, "RemoteAccessTool", 0)
end
if not MpCommon.QueryPersistContext(L0_0, "T1219") then
  MpCommon.AppendPersistContext(L0_0, "T1219", 0)
end
return mp.CLEAN
