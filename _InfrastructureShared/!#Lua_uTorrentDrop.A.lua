if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "utorrentie.exe" then
  mp.set_mpattribute("Lua:uTorrentIEDrop.A")
end
return mp.CLEAN
