if mp.GetParentProcInfo() ~= nil and string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "psexesvc.exe" then
  return mp.INFECTED
end
return mp.CLEAN
