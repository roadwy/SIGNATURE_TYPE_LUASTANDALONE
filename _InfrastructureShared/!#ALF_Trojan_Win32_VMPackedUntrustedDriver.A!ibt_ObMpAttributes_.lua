if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and mp.getfilesize() > 122880 then
  return mp.INFECTED
end
return mp.CLEAN
