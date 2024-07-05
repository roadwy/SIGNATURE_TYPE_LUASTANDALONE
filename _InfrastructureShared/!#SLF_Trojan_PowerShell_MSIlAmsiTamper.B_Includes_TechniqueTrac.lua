local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))
if L0_0:find("powershell", 1, true) then
  if pe.get_versioninfo() ~= nil and pe.get_versioninfo().OriginalFilename ~= nil and (string.lower(pe.get_versioninfo().OriginalFilename):find("powerleech.dll", 1, true) or string.lower(pe.get_versioninfo().OriginalFilename):find("ddcpowershellhelper.dll", 1, true) or string.lower(pe.get_versioninfo().OriginalFilename):find("cylance.dotnethookhelper.dll", 1, true)) then
    return mp.CLEAN
  end
  TrackPidAndTechnique("AMSI", "T1562.001", "amsitampering")
  return mp.INFECTED
end
return mp.CLEAN
