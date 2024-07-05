if (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "run.dat" and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):sub(-36) == "7f5ed85d-6828-4f92-858c-f40b0ac68138" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):sub(-4) == "nano") then
  mp.set_mpattribute("Lua:NanocorFilename.A")
end
return mp.CLEAN
