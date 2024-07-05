if mp.GetParentProcInfo() and string.find(string.lower(mp.GetParentProcInfo().image_path), "python", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
