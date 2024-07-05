if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) and mp.GetMOTWHostUrl() ~= nil and mp.GetMOTWHostUrl():find("g56vhscdhiqzhmh3zbkpqiyhc7lqkybv6z6me7cnx7zwy2oespybyjid.onion/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
