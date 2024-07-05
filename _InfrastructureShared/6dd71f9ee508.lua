if mp.GetParentProcInfo() ~= nil and string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "wmiprvse.exe" then
  if versioning.IsSeville() then
    return mp.INFECTED
  end
  return mp.LOWFI
end
return mp.CLEAN
