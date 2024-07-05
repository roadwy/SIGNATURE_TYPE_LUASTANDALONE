if mp.GetParentProcInfo() ~= nil and (string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "services.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "wmiprvse.exe") then
  return mp.INFECTED
end
return mp.CLEAN
