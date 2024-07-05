if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) and mp.GetMOTWHostUrl() ~= nil and mp.GetMOTWHostUrl():find("st7fcacpvapdoeaxkhoouvvtlwpmrusqokhzswgcer7f6x4qiibn7yqd.onion/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
