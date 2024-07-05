local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_SCANREASON)
if L0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L0_0 = L0_0(mp.CONTEXT_DATA_NEWLYCREATEDHINT)
elseif L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if not string.find(L0_0, "\\temp\\", 1, true) then
  return mp.CLEAN
end
if not string.find(L0_0, "%.exe$") then
  return mp.CLEAN
end
if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) ~= "jsc.exe" then
  return mp.CLEAN
end
if MpCommon.QueryPersistContext(L0_0, "Lua:ExeDroppedByJsc") then
  return mp.CLEAN
end
mp.set_mpattribute("MpDisableCaching")
MpCommon.AppendPersistContext(L0_0, "Lua:ExeDroppedByJsc", 0)
return mp.INFECTED
