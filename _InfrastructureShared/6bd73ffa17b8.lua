if mp.GetParentProcInfo() ~= nil and string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "svchost.exe" and versioning.IsSeville() then
  return mp.INFECTED
end
return mp.CLEAN
