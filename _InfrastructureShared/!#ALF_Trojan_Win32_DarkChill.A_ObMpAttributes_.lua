if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) and mp.GetMOTWHostUrl() ~= nil and mp.GetMOTWHostUrl():find("6qt4rtepg5gqidc2x5sdmeqlt6qfhfl6esncfcsmqxdjut7nt6mmwwid.onion/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
