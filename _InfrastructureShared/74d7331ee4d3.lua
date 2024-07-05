if mp.GetParentProcInfo() ~= nil and (string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "fodhelper.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "computerdefaults.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "wsreset.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "compmgmtlauncher.exe") then
  return mp.INFECTED
end
return mp.CLEAN
