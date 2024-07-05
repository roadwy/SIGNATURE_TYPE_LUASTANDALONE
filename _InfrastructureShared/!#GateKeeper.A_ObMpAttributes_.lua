if versioning.IsBeta() and not versioning.IsServer() then
  if versioning.GetOsVersion() > 393219 then
  elseif versioning.IsEnterprise() or MpCommon.IsSampled(50000, false, true, false) then
  end
  if true and mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) then
    return mp.INFECTED
  end
end
return mp.CLEAN
