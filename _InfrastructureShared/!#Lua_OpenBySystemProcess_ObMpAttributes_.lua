if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_PROCESS_ID) == 4 then
  return mp.INFECTED
end
return mp.CLEAN
