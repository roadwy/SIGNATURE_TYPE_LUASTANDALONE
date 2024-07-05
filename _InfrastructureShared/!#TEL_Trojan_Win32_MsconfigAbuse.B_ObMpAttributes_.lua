if peattributes.isdll or peattributes.isdriver or peattributes.isdamaged then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
if not mp.get_contextdata(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) then
  return mp.CLEAN
end
if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) ~= "msconfig.exe" then
  return mp.CLEAN
end
if ({
  ["cmd.exe"] = true,
  ["useraccountcontrolsettings.exe"] = true,
  ["taskmgr.exe"] = true,
  ["control.exe"] = true,
  ["mmc.exe"] = true,
  ["msinfo32.exe"] = true,
  ["winver.exe"] = true,
  ["werfault.exe"] = true,
  ["eventvwr.exe"] = true,
  ["msra.exe"] = true,
  ["rstrui.exe"] = true,
  ["sgtool.exe"] = true,
  ["resmon.exe"] = true,
  ["perfmon.exe"] = true,
  ["regedit32.exe"] = true
})[mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))] == true then
  return mp.CLEAN
end
return mp.INFECTED
