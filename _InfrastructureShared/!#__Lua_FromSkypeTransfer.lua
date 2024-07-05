if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true and string.find(string.lower(mp.getfilename()), "\\roaming\\skype\\my skype received files", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
