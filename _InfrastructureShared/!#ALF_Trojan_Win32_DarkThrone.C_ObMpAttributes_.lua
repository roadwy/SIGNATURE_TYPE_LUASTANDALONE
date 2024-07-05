if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) and mp.GetMOTWHostUrl() ~= nil and mp.GetMOTWHostUrl():find("k6s24pz55gtvtzzpg4riv7zb74vts425bl42zrpmice5ud3a65itj6ad.onion/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
