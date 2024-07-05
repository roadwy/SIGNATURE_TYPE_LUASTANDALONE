if mp.GetParentProcInfo() == nil then
  return mp.CLEAN
end
if string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "wmiprvse.exe" then
  return mp.INFECTED
end
return mp.CLEAN
