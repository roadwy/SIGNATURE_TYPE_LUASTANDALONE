if mp.GetParentProcInfo() ~= nil and (string.find(mp.GetParentProcInfo().image_path, "java.exe", -8, true) or string.find(mp.GetParentProcInfo().image_path, "java", -4, true)) then
  return mp.INFECTED
end
return mp.CLEAN
