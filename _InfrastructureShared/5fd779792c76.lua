if mp.GetParentProcInfo() ~= nil and (string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "services.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "wmiprvse.exe") then
  if versioning.IsSeville() and versioning.GetCloudBlockLevel() >= 4 then
    return mp.INFECTED
  end
  return mp.LOWFI
end
return mp.CLEAN
