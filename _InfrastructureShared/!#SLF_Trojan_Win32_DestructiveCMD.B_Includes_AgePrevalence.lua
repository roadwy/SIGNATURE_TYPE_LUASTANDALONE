local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_SCANREASON)
if L0_0 ~= mp.SCANREASON_ONOPEN then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if string.lower(string.sub(L0_0, -4)) ~= ".exe" then
  return mp.CLEAN
end
if not MpCommon.QueryPersistContext(L0_0, "RunsDestructiveCMDsParent") then
  return mp.CLEAN
end
if MpCommon.QueryPersistContext(L0_0, "RunsDestructiveCMDsParentStopLookup") then
  return mp.CLEAN
end
if MpCommon.QueryPersistContext(L0_0, "RunsDestructiveCMDsParentBlock") then
  if mp.get_mpattribute("MpDisableCaching") then
    mp.clear_mpattribute("MpDisableCaching")
  end
  if mp.get_mpattribute("disableCachingQueryAgePrev") then
    mp.clear_mpattribute("disableCachingQueryAgePrev")
  end
  clearPersistContext(L0_0, "disableCachingQueryAgePrev")
  mp.SetHipsRule("c1db55ab-c21a-4637-bb3f-a12568109d35")
  return mp.BLOCKEXECUTION
end
if getAgePrev(false) == -1 or getAgePrev(false) == -1 then
  if not mp.get_mpattribute("disableCachingQueryAgePrev") then
    mp.set_mpattribute("disableCachingQueryAgePrev")
  end
  if not MpCommon.QueryPersistContext(L0_0, "disableCachingQueryAgePrev") then
    MpCommon.AppendPersistContext(L0_0, "disableCachingQueryAgePrev", 0)
  end
  return mp.CLEAN
end
if getAgePrev(false) <= 1 and getAgePrev(false) <= 100 then
  if not MpCommon.QueryPersistContext(L0_0, "RunsDestructiveCMDsParentBlock") then
    MpCommon.AppendPersistContext(L0_0, "RunsDestructiveCMDsParentBlock", 0)
  end
  if mp.get_mpattribute("MpDisableCaching") then
    mp.clear_mpattribute("MpDisableCaching")
  end
  if mp.get_mpattribute("disableCachingQueryAgePrev") then
    mp.clear_mpattribute("disableCachingQueryAgePrev")
  end
  clearPersistContext(L0_0, "disableCachingQueryAgePrev")
  if mp.IsHipsRuleEnabled("c1db55ab-c21a-4637-bb3f-a12568109d35") == true then
    mp.SetHipsRule("c1db55ab-c21a-4637-bb3f-a12568109d35")
    return mp.BLOCKEXECUTION
  else
    mp.ReportLowfi(L0_0, 351527962)
    return mp.CLEAN
  end
end
if not MpCommon.QueryPersistContext(L0_0, "RunsDestructiveCMDsParentStopLookup") then
  MpCommon.AppendPersistContext(L0_0, "RunsDestructiveCMDsParentStopLookup", 0)
end
if mp.get_mpattribute("MpDisableCaching") then
  mp.clear_mpattribute("MpDisableCaching")
end
if mp.get_mpattribute("disableCachingQueryAgePrev") then
  mp.clear_mpattribute("disableCachingQueryAgePrev")
end
clearPersistContext(L0_0, "disableCachingQueryAgePrev")
return mp.CLEAN
