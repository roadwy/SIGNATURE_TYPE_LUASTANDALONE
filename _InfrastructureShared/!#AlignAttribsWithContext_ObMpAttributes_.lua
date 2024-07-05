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
if not mp.get_mpattribute("BM_AgePrevLookedUpForBITS") and MpCommon.QueryPersistContext(L0_0, "BM_AgePrevLookedUpForBITS") then
  mp.set_mpattribute("BM_AgePrevLookedUpForBITS")
end
if not mp.get_mpattribute("BM_BlockedForBITS") and MpCommon.QueryPersistContext(L0_0, "BM_BlockedForBITS") then
  mp.set_mpattribute("BM_BlockedForBITS")
end
return mp.CLEAN
