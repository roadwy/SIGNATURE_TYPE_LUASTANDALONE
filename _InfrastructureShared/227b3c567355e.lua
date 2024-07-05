if mp.get_sigattr_event_count(16384) > 50 then
  return mp.CLEAN
end
if ({
  ["explorer.exe"] = true,
  ["cmd.exe"] = true,
  ["powershell.exe"] = true,
  ["pwsh.exe"] = true,
  ["cscript.exe"] = true,
  ["wscript.exe"] = true,
  ["mshta.exe"] = true,
  ["git.exe"] = true,
  ["gvfs.mount.exe"] = true,
  ["iisexpress.exe"] = true,
  ["sqlservr.exe"] = true,
  ["rdpinit.exe"] = true,
  ["robocopy.exe"] = true
})[string.lower(bm.get_imagepath()):match("\\([^\\]+)$")] then
  return mp.CLEAN
end
return mp.INFECTED
