if peattributes.isdll and (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\appdata\\local\\microsoft\\windows\\temporary internet files", 1, true) ~= nil or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\appdata\\local\\microsoft\\windows\\inetcache", 1, true) ~= nil) then
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "regsvr32.exe" then
    mp.set_mpattribute("Lua:ContextRegsvr32AccessTIF.A")
  elseif string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "control.exe" then
    mp.set_mpattribute("Lua:ContextControlAccessTIF.A")
  end
end
return mp.CLEAN
