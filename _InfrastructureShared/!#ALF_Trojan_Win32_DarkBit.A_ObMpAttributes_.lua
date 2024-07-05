if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) and mp.GetMOTWHostUrl() ~= nil and mp.GetMOTWHostUrl():find("iw6v2p3cruy7tqfup3yl4dgt4pfibfa3ai4zgnu5df2q3hus3lm7c7ad.onion/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
