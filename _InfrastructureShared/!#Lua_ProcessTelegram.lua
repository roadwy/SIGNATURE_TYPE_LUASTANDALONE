if mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME) == nil or mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME) == "" then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME):lower() == "cmd.exe" then
  mp.set_mpattribute("LUA:RtpProc_cmd")
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME):lower() == "telegram.exe" then
  return mp.INFECTED
end
return mp.CLEAN
