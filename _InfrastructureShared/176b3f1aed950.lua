if mp.GetParentProcInfo() ~= nil then
  if string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "msdt.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "sihost.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "explorer.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "systemsettings.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "runtimebroker.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "svchost.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "pcwrun.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "interop.exe" then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
