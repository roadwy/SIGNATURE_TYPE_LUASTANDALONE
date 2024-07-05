if (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\appdata\\local\\microsoft\\windows\\temporary internet files", 1, true) ~= nil or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\appdata\\local\\microsoft\\windows\\inetcache", 1, true) ~= nil) and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "cmd.exe" then
  if mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
    mp.set_mpattribute("Lua:ContextCmdDropTIF.A")
  else
    mp.set_mpattribute("Lua:ContextCmdAccessTIF.A")
  end
end
return mp.CLEAN
