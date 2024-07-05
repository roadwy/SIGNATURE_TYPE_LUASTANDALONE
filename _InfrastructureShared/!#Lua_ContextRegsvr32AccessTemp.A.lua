if peattributes.isdll and (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\appdata\\local\\temp", 1, true) ~= nil or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\local settings\\temp", 1, true) ~= nil) then
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "regsvr32.exe" then
    mp.set_mpattribute("Lua:ContextRegsvr32AccessTemp.A")
  elseif string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "control.exe" then
    mp.set_mpattribute("Lua:ContextControlAccessTemp.A")
  end
end
return mp.CLEAN
