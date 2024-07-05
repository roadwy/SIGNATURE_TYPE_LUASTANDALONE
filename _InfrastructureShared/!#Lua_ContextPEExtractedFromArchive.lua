if peattributes.isdll then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\temp\\rar$ex", 1, true) ~= nil then
    mp.set_mpattribute("Lua:ContextWinRARExtracted.A")
  end
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\temp\\7zo", 1, true) ~= nil then
    mp.set_mpattribute("Lua:Context7ZipExtracted.A")
  end
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\temp\\wz[0-9a-f][0-9a-f][0-9a-f][0-9a-f]$") ~= nil then
    mp.set_mpattribute("Lua:ContextWinZipExtracted.A")
  end
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "irsetup.exe" and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\temp\\", 1, true) ~= nil then
    mp.set_mpattribute("Lua:ContextIRSetupExtracted.A")
  end
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "7zg.exe" and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\desktop\\", 1, true) ~= nil or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\downloads\\", 1, true) ~= nil) then
    mp.set_mpattribute("Lua:Context7ZipExtracted.B")
  end
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "explorer.exe" and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\temp\\temp[0-9]_.+%.zip$") ~= nil then
    mp.set_mpattribute("Lua:ContextExplorerZIPExtracted.A")
  end
end
return mp.CLEAN
