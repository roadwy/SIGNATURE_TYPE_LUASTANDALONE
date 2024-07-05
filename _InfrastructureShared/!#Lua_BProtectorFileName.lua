if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "bitguard.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "bitguard.dll" then
    mp.set_mpattribute("Lua:BProtectorFileName.A")
  elseif string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "browserprotect.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "browserdefender.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "browsemngr.exe" then
    mp.set_mpattribute("Lua:BProtectorFileName.B")
  end
end
return mp.CLEAN
