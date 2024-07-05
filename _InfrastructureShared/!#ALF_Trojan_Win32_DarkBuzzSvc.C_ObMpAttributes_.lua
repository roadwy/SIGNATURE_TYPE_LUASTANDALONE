if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) and mp.GetMOTWHostUrl() ~= nil and mp.GetMOTWHostUrl():find("hiveapi5qsnctp7rkmgrd3nrk64o5u6vdbc2ua4aevl2r6yc3j7kd4yd.onion/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
