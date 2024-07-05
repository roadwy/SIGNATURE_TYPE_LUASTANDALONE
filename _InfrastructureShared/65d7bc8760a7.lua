if mp.GetParentProcInfo() ~= nil and string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "wmiprvse.exe" and versioning.IsSeville() then
  return mp.LOWFI
end
return mp.CLEAN
