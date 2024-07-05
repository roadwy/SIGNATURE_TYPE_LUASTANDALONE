if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) and mp.GetMOTWHostUrl() ~= nil and mp.GetMOTWHostUrl():find("5qup7t6ajr4nffql2buua23mfhvehawlz4yeoh5n72d2esaaurb7hzqd.onion/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
