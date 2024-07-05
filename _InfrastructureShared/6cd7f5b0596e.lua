if mp.GetParentProcInfo() ~= nil and string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "mmc.exe" and versioning.IsSeville() then
  return mp.INFECTED
end
return mp.CLEAN
