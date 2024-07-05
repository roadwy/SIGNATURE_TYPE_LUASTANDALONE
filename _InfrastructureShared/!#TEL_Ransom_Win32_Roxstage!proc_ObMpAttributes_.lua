local L0_0
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.isdriver
  if not L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.isdamaged
  end
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("CLOUD:RoxstageBlockAccess")
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if not mp.get_mpattribute("BM_RoxstageProcessBlock") and not MpCommon.QueryPersistContext(L0_0, "BM_RoxstageProcessBlock") then
  return mp.CLEAN
end
if not MpCommon.QueryPersistContext(L0_0, "CLOUD:RoxstageBlockAccess") then
  MpCommon.AppendPersistContext(L0_0, "CLOUD:RoxstageBlockAccess", 0)
end
return mp.INFECTED
