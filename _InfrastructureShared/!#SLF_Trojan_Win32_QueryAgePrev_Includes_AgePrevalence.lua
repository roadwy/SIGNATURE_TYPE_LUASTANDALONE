local L0_0
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_UNKNOWN then
    if mp.GetResmgrBasePlugin() == "file" then
      L0_0 = mp.getfilename()
      if not sysio.IsFileExists(L0_0) then
        return mp.CLEAN
      end
    else
      return mp.CLEAN
    end
  else
    return mp.CLEAN
  end
end
if L0_0 == nil then
  L0_0 = mp.getfilename()
end
if mp.get_mpattribute("agePrevQueried") then
  if not MpCommon.QueryPersistContext(L0_0, "agePrevQueried") then
    MpCommon.AppendPersistContext(L0_0, "agePrevQueried", 0)
  end
  return mp.CLEAN
elseif MpCommon.QueryPersistContext(L0_0, "agePrevQueried") then
  if not mp.get_mpattribute("agePrevQueried") then
    mp.set_mpattribute("agePrevQueried")
  end
  return mp.CLEAN
end
if mp.get_mpattributevalue("Lua:FmsAgeInDays") ~= nil then
  if not mp.get_mpattribute("agePrevQueried") then
    mp.set_mpattribute("agePrevQueried")
  end
  if not MpCommon.QueryPersistContext(L0_0, "agePrevQueried") then
    MpCommon.AppendPersistContext(L0_0, "agePrevQueried", 0)
  end
  return mp.CLEAN
end
if getAgePrev(false) > -1 and getAgePrev(false) > -1 then
  if not mp.get_mpattribute("agePrevQueried") then
    mp.set_mpattribute("agePrevQueried")
  end
  if not MpCommon.QueryPersistContext(L0_0, "agePrevQueried") then
    MpCommon.AppendPersistContext(L0_0, "agePrevQueried", 0)
  end
  return mp.CLEAN
end
if mp.get_mpattribute("queryAgePrev") or MpCommon.QueryPersistContext(L0_0, "queryAgePrev") then
  mp.set_mpattribute("agePrevQueried")
  MpCommon.AppendPersistContext(L0_0, "agePrevQueried", 0)
  return mp.INFECTED
end
if mp.get_mpattribute("disableCachingQueryAgePrev") or MpCommon.QueryPersistContext(L0_0, "disableCachingQueryAgePrev") then
  mp.set_mpattribute("MpDisableCaching")
  mp.set_mpattribute("agePrevQueried")
  MpCommon.AppendPersistContext(L0_0, "agePrevQueried", 0)
  return mp.INFECTED
end
return mp.CLEAN
