if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) and mp.GetMOTWHostUrl() ~= nil and mp.GetMOTWHostUrl():find("zzkoerej3wx4l42jtfek4duarkewaifvve3ztij7iorvuqdggekmxwad.onion/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
