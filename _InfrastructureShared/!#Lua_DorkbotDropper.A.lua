if (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "cleaner.exe" and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH):sub(-25, -9)) == "\\appdata\\roaming\\" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH):sub(-26, -9)) == "\\application data\\") then
  mp.set_mpattribute("Lua:DorkbotDropper.A")
end
return mp.CLEAN
