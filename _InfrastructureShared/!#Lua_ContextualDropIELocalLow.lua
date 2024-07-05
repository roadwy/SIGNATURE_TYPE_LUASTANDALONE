if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\appdata\\locallow", 1, true) ~= nil and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "iexplore.exe" then
  mp.set_mpattribute("Lua:ContextualDropIELocalLow")
end
return mp.CLEAN
