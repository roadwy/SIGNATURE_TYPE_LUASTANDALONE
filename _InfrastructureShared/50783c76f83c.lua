if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_AMSI and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
