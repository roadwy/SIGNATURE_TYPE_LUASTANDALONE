if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) and mp.GetMOTWHostUrl() ~= nil and mp.GetMOTWHostUrl():find("royal7kk2nawd2zyeytztoz4spyr2wbmbv3746abstl4fnmh4cthbmad.onion/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
