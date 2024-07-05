if pe.get_versioninfo() ~= nil and pe.get_versioninfo().InternalName == "pwmgtagt" then
  return mp.INFECTED
end
return mp.CLEAN
