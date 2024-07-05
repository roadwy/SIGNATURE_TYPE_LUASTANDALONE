if mp.GetParentProcInfo() ~= nil and (string.lower(string.sub(mp.GetParentProcInfo().image_path, -12)) == "wmiprvse.exe" or string.lower(string.sub(mp.GetParentProcInfo().image_path, -12)) == "services.exe") then
  return mp.INFECTED
end
return mp.CLEAN
