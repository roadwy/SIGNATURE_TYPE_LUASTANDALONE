if peattributes.isdll or peattributes.isdamaged then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) == true and mp.get_contextdata(mp.CONTEXT_DATA_PROCESS_ID) == 4 then
  if mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):lower() == "cmd.exe" then
    mp.set_mpattribute("TEL:SystemLaunchCmd")
  end
  return mp.INFECTED
end
return mp.CLEAN
