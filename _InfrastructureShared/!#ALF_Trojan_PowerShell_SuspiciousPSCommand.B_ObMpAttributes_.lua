if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_AMSI then
  if pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_APPNAME) and pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME) and pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME) == nil then
    return mp.INFECTED
  end
  return mp.CLEAN
end
return mp.CLEAN
