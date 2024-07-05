if (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\windows genuine advantage\\{", 1, true) ~= nil and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "msiexec.exe" then
  mp.set_mpattribute("Lua:WGAMsiexec.A")
end
return mp.CLEAN
