if (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "ibsvc.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "wsupdsvc.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "installbrainservice.exe") then
  mp.set_mpattribute("Lua:InstallBrainFileName")
end
return mp.CLEAN
