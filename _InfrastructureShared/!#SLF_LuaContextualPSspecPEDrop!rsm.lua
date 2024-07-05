if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)):find("roaming.exe", 1, true) ~= nil and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "powershell.exe" then
  return mp.INFECTED
end
return mp.CLEAN
