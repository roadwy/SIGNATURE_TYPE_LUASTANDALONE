if mp.GetParentProcInfo() ~= nil and string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "cmd.exe" then
  return mp.INFECTED
end
return mp.CLEAN
