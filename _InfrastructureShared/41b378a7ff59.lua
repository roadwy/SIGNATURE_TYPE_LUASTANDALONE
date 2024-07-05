if mp.get_sigattr_event_count(16384) > 30 then
  return mp.CLEAN
end
if ({
  ["explorer.exe"] = true,
  ["searchprotocolhost.exe"] = true,
  ["cmd.exe"] = true,
  ["powershell.exe"] = true,
  ["pwsh.exe"] = true,
  ["cscript.exe"] = true,
  ["wscript.exe"] = true,
  ["mshta.exe"] = true,
  ["git.exe"] = true,
  ["gvfs.mount.exe"] = true,
  ["devenv.exe"] = true,
  ["iisexpress.exe"] = true,
  ["sqlservr.exe"] = true,
  ["rdpinit.exe"] = true,
  ["scanstate.exe"] = true,
  ["robocopy.exe"] = true,
  ["veeamguesthelperctrl.exe"] = true,
  ["trimqueue.exe"] = true,
  ["netwrix.wsa.agentservice.exe"] = true
})[string.lower(bm.get_imagepath()):match("\\([^\\]+)$")] then
  return mp.CLEAN
end
if string.lower(bm.get_imagepath()):find("\\netwrix auditor\\active directory auditing\\", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
