if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "z.tmp" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "a.exe") and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "iexplore.exe" then
  mp.set_mpattribute("Lua:ContextualIEDroppedEK")
end
return mp.CLEAN
