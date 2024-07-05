if mp.GetParentProcInfo() ~= nil and string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "w3wp.exe" then
  return mp.INFECTED
end
return mp.CLEAN
