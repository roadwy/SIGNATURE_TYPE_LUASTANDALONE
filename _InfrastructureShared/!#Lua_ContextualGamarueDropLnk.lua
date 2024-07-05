if (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)):find("%(%d+gb%)%.lnk", 1, false) and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "msiexec.exe" then
  return mp.INFECTED
end
return mp.CLEAN
