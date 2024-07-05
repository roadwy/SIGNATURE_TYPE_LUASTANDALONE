if (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "setup_fsu_cid.exe" then
  mp.set_mpattribute("Lua:SefnitFileScoutFileName")
end
return mp.CLEAN
