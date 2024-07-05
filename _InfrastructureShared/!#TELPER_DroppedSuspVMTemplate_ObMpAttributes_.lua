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
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(string.sub(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME), -3))
if L0_0 ~= ".vm" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.find
L0_0 = L0_0(string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)), "atlassian\\confluence\\extra\\widgetconnector\\templates", 1, true)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if not MpCommon.QueryPersistContext(L0_0, "DroppedSuspVMTemplate") then
  MpCommon.AppendPersistContext(L0_0, "DroppedSuspVMTemplate", 0)
end
return mp.CLEAN
