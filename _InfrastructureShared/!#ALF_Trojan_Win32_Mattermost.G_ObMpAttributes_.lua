if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) and mp.GetMOTWHostUrl() ~= nil and mp.GetMOTWHostUrl():find("wk2ac7nd6zrigfnz2f2ecvmeone5wioap5xtgdkioz7htvavzlwos7qd.onion/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
