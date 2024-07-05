if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_AMSI and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)):find("cscript", 1, true) or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)):find("wscript", 1, true)) then
  TrackPidAndTechnique("AMSI", "T1047", "WMIInstrumentation")
  return mp.INFECTED
end
return mp.CLEAN
