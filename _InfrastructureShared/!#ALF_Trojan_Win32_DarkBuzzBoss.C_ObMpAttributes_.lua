if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) and mp.GetMOTWHostUrl() ~= nil and mp.GetMOTWHostUrl():find("hiveadm7mnsyfv2kjok4rnmo4326lsj6squiqxusye27y5vwdw7bmmyd.onion/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
