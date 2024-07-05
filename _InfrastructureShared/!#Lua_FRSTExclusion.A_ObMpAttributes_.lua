if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_AMSI and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)):find("frst64.exe", 1, true) or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)):find("frstenglish.exe", 1, true) or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)):find("wsmprovhost.exe", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
