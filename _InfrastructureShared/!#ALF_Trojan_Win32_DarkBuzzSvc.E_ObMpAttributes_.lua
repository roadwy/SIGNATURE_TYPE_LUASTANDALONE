if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) and mp.GetMOTWHostUrl() ~= nil and mp.GetMOTWHostUrl():find("hiveapi7nnmag6zq4dsayc2gq54rpltrsf76jsn4fpnygvjtm7mup2qd.onion/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
