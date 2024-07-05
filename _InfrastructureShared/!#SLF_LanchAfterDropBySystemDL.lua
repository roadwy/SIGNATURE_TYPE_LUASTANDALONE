local L0_0
L0_0 = peattributes
L0_0 = L0_0.isdamaged
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_SCANREASON)
if L0_0 == mp.SCANREASON_ONOPEN then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L0_0 = L0_0(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT)
  if L0_0 == true then
    L0_0 = mp
    L0_0 = L0_0.get_contextdata
    L0_0 = L0_0(mp.CONTEXT_DATA_FILEPATH)
    if not MpCommon.QueryPersistContext(L0_0, "SystemDrop") then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
