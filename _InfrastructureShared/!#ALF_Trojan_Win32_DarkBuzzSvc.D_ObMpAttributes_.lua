if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) and mp.GetMOTWHostUrl() ~= nil and mp.GetMOTWHostUrl():find("hiveapi35eun7n6gr3fluy4avkwvkgdoza5owyh5xfdb72iq4wlotqad.onion/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
