if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_mpattribute("Lua:ObfusJsVbs!Gen") then
  return mp.INFECTED
end
return mp.CLEAN
