local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_SCANREASON)
if L0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_NEWLYCREATEDHINT)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if MpCommon.QueryPersistContext(L0_0, "Lua:XOMLDroppedByOffice") then
  return mp.CLEAN
end
if string.sub(L0_0, -5):match("%.(%w+)$") == nil then
  return mp.CLEAN
end
if string.sub(L0_0, -5):match("%.(%w+)$") ~= "xoml" then
  return mp.CLEAN
end
if GetCtxOfficeProc() == "" then
  return mp.CLEAN
end
mp.set_mpattribute("MpDisableCaching")
MpCommon.AppendPersistContext(L0_0, "Lua:XOMLDroppedByOffice", 0)
return mp.INFECTED
