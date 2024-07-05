if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)):find("^rad.....%.tmp%.exe") == 1 then
  else
  end
  if "dll" ~= nil and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "wscript.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "cscript.exe") then
    if "dll" == "exe" then
      mp.set_mpattribute("Lua:ContextScriptTempExe.A")
    elseif "dll" == "dll" then
      mp.set_mpattribute("Lua:ContextScriptTempDll.A")
    end
  end
end
return mp.CLEAN
