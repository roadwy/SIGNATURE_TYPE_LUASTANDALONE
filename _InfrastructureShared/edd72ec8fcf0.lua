if mp.GetParentProcInfo() ~= nil and string.find(mp.GetParentProcInfo().image_path, "java", -4, true) then
  return mp.INFECTED
end
return mp.CLEAN
